//
// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE.md file in the project root for full license information.
//
// synthesis_result.cpp: Implementation definitions for CSpxSynthesisResult C++ class
//

#include "stdafx.h"
#include "synthesis_result.h"
#include "site_helpers.h"
#include "create_object_helpers.h"
#include "property_id_2_name_map.h"
#include "guid_utils.h"
#include "synthesis_helper.h"

namespace Microsoft {
namespace CognitiveServices {
namespace Speech {
namespace Impl {


CSpxSynthesisResult::CSpxSynthesisResult()
{
    SPX_DBG_TRACE_FUNCTION();
}

CSpxSynthesisResult::~CSpxSynthesisResult()
{
    SPX_DBG_TRACE_FUNCTION();
}

std::wstring CSpxSynthesisResult::GetResultId()
{
    return m_requestId;
}

std::wstring CSpxSynthesisResult::GetRequestId()
{
    return m_requestId;
}

std::shared_ptr<ISpxSynthesizerEvents> CSpxSynthesisResult::GetEvents()
{
    return m_events;
}

std::shared_ptr<CSpxAsyncOp<std::shared_ptr<ISpxSynthesisResult>>> CSpxSynthesisResult::GetFutureResult()
{
    return m_futureResult;
}

ResultReason CSpxSynthesisResult::GetReason()
{
    return m_reason;
}

CancellationReason CSpxSynthesisResult::GetCancellationReason()
{
    return m_cancellationReason;
}

CancellationErrorCode CSpxSynthesisResult::GetCancellationErrorCode()
{
    return m_cancellationErrorCode;
}

uint32_t CSpxSynthesisResult::GetAudioLength()
{
    return (uint32_t)m_audiodata.size();
}

std::shared_ptr<std::vector<uint8_t>> CSpxSynthesisResult::GetAudioData()
{
    return std::make_shared<std::vector<uint8_t>>(m_audiodata);
}

std::shared_ptr<std::vector<uint8_t>> CSpxSynthesisResult::GetRawAudioData()
{
    if (HasHeader())
    {
        return std::make_shared<std::vector<uint8_t>>(m_audiodata.begin() + m_headerLength, m_audiodata.end());
    }
    else
    {
        return GetAudioData();
    }
}

std::shared_ptr<ISpxAudioDataStream> CSpxSynthesisResult::GetAudioDataStream()
{
    return m_audioStream;
}

uint16_t CSpxSynthesisResult::GetFormat(SPXWAVEFORMATEX* formatBuffer, uint16_t formatSize)
{
    SPX_IFTRUE_THROW_HR(m_audioformat.get() == nullptr, SPXERR_UNINITIALIZED);

    uint16_t formatSizeRequired = sizeof(SPXWAVEFORMATEX) + m_audioformat->cbSize;

    if (formatBuffer != nullptr)
    {
        size_t size = std::min(formatSize, formatSizeRequired);
        memcpy(formatBuffer, m_audioformat.get(), size);
    }

    return formatSizeRequired;
}

bool CSpxSynthesisResult::HasHeader()
{
    return m_hasHeader;
}

void CSpxSynthesisResult::InitSynthesisResult(const std::wstring& requestId, ResultReason reason,
    CancellationReason cancellation, CancellationErrorCode errorCode,
    uint8_t* audio_buffer, size_t audio_length, SPXWAVEFORMATEX* format, bool hasHeader)
{
    SPX_IFTRUE_THROW_HR(m_audiodata.size() > 0, SPXERR_ALREADY_INITIALIZED);
    SPX_IFTRUE_THROW_HR(m_audioformat != nullptr, SPXERR_ALREADY_INITIALIZED);

    // Set result ID
    m_resultId = PAL::CreateGuidWithoutDashes();

    // Set request ID
    m_requestId = requestId;

    // Set reason
    m_reason = reason;
    m_cancellationReason = cancellation;
    m_cancellationErrorCode = errorCode;

    // Set audio format
    if (format != nullptr)
    {
        // Allocate the buffer for the format
        auto formatSize = sizeof(SPXWAVEFORMATEX) + format->cbSize;
        m_audioformat = SpxAllocWAVEFORMATEX(formatSize);

        // Copy the format
        memcpy(m_audioformat.get(), format, formatSize);
    }

    // Set audio data
    if (audio_length > 0)
    {
        m_headerLength = 0;
        if (hasHeader)
        {
            auto headerVector = CSpxSynthesisHelper::BuildRiffHeader((uint32_t)audio_length, 0, m_audioformat);
            m_headerLength = (uint32_t)headerVector->size();
            m_audiodata.resize(m_headerLength + audio_length);
            memcpy(m_audiodata.data(), headerVector->data(), m_headerLength);
        }
        else
        {
            m_audiodata.resize(audio_length);
        }

        memcpy(m_audiodata.data() + m_headerLength, audio_buffer, audio_length);
    }

    m_hasHeader = hasHeader;
}

void CSpxSynthesisResult::SetEvents(const std::shared_ptr<ISpxSynthesizerEvents>& events)
{
    m_events = events;

    // Initialize audio data stream
    // Put audio data stream init in this method because it requires events
    m_audioStream = SpxCreateObjectWithSite<ISpxAudioDataStream>("CSpxAudioDataStream", SpxGetRootSite());
    m_audioStream->InitFromSynthesisResult(((ISpxSynthesisResult*)this)->shared_from_this());
}

void CSpxSynthesisResult::SetFutureResult(std::shared_ptr<CSpxAsyncOp<std::shared_ptr<ISpxSynthesisResult>>> futureResult)
{
    m_futureResult = futureResult;
}

void CSpxSynthesisResult::Reset()
{
    m_resultId.clear();
    m_requestId.clear();
    m_events = nullptr;
    m_reason = static_cast<ResultReason>(0);
    m_cancellationReason = static_cast<CancellationReason>(0);
    m_cancellationErrorCode = CancellationErrorCode::NoError;
    m_audiodata.clear();
    m_audioformat = nullptr;
    m_hasHeader = true;
    m_headerLength = 0;
    m_audioStream = nullptr;
}

void CSpxSynthesisResult::SetStringValue(const char* name, const char* value)
{
    ISpxPropertyBagImpl::SetStringValue(name, value);
}


} } } } // Microsoft::CognitiveServices::Speech::Impl