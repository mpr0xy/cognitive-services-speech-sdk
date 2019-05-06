// Copyright (c) Microsoft. All rights reserved.
// See https://aka.ms/csspeech/license201809 for the full license information.

%feature("docstring") Microsoft::CognitiveServices::Speech::CancellationDetails "
Contains detailed information about why a result was canceled.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::CancellationDetails::Reason "
The reason the result was canceled.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::CancellationDetails::ErrorCode "
The error code in case of an unsuccessful recognition (Reason is set to Error). If Reason is not Error, ErrorCode is set to NoError.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::CancellationDetails::ErrorDetails "
The error message in case of an unsuccessful recognition (Reason is set to Error).
";

%feature("docstring") Microsoft::CognitiveServices::Speech::CancellationDetails::FromResult "
Creates an instance of CancellationDetails object for the canceled
RecognitionResult.

:param result: The result that was canceled.
:return: A CancellationDetails instance.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventArgs "
Base class for event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal "
Clients can connect to the event signal to receive events, or disconnect from
the event signal to stop receiving events.

";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal::EventSignal "
Constructs an event signal.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal::Connect "
Connects given callback function to the event signal, to be invoked when the
event is signalled.

:param callback: Callback to connect.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal::Disconnect "
Disconnects given callback.

When the number of connected clients changes from one to zero, the disconnect
callback will be called, if provided.

:param callback: Callback function.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal::DisconnectAll "
Disconnects all registered callbacks.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal::Signal "
Signals the event with given arguments *t* to all connected callbacks.

:param t: Event arguments to signal.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::EventSignal::IsConnected "
Checks if a callback is connected.

:return: True if a callback is connected
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionCanceledEventArgs "
Class for intent recognition canceled event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionCanceledEventArgs::Reason "
`CancellationReason`: The reason the result was canceled.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionCanceledEventArgs::ErrorCode "
`CancellationErrorCode`: The error code in case of an unsuccessful recognition (Reason is set to
    Error). If Reason is not Error, ErrorCode is set to NoError.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionCanceledEventArgs::ErrorDetails "
`str` : The error message in case of an unsuccessful recognition (Reason is set to Error).
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionEventArgs "
Class for intent recognition event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionEventArgs::Result "
`IntentRecognitionResult`: Intent recognition event result.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionResult "
Represents the result of an intent recognition.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Intent::IntentRecognitionResult::IntentId "
Unique intent id.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::PropertyCollection "
Class to retrieve or set a property value from a property collection.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionEventArgs "
Provides data for the RecognitionEvent.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionEventArgs::Offset "
`int`: The offset of recognition event
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult "
Contains detailed information about the result of a recognition operation.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult::ResultId "
`str`: Unique result id.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult::Reason "
`ResultReason`: Recognition reason.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult::Text "
`str`: Normalized text generated by a speech recognition engine from recognized input.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult::Properties "
`PropertyCollection`: Collection of additional RecognitionResult properties.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult::Duration "

Duration of recognized speech in ticks. A single tick represents one hundred
nanoseconds or one ten-millionth of a second.

:return: Duration of recognized speech in ticks.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::RecognitionResult::Offset "

Offset of the recognized speech in ticks. A single tick represents one hundred
nanoseconds or one ten-millionth of a second.

:return: Offset of the recognized speech in ticks.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SessionEventArgs "
Base class for session event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SessionEventArgs::SessionId "
`str`: Session identifier (a GUID in string format).
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionCanceledEventArgs "
Class for speech recognition canceled event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionCanceledEventArgs::Reason "
`CancellationReason`: The reason the result was canceled.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionCanceledEventArgs::ErrorCode "
`CancellationErrorCode`: The error code in case of an unsuccessful recognition (Reason is set to
Error). If Reason is not Error, ErrorCode is set to NoError.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionCanceledEventArgs::ErrorDetails "
`str`: The error message in case of an unsuccessful recognition (Reason is set to Error).
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionEventArgs "
Class for speech recognition event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionEventArgs::Result "
`SpeechRecognitionResult` Speech recognition event result.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::SpeechRecognitionResult "
Base class for speech recognition results.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionCanceledEventArgs "
Class for translation recognition canceled event arguments.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionCanceledEventArgs::Reason "
`CancellationReason` : The reason the result was canceled.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionCanceledEventArgs::error_code "
`CancellationErrorCode` : The error code in case of an unsuccessful recognition
(Reason is set to Error). If Reason is not Error, ErrorCode is set to NoError.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionCanceledEventArgs::error_details "
`str` : The error message in case of an unsuccessful recognition (Reason is set
to Error).
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionEventArgs "
Defines payload that is sent with the event Recognizing or Recognized.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionEventArgs::Result "
`TranslationRecognitionResult`: Contains the translation recognition result.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionResult "
Defines the translation text result.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationRecognitionResult::Translations "
`Dict[str, str]`: Presents the translation results. Each item in the map is a
key value pair, where key is the language tag of the translated text, and value
is the translation text in that language.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationSynthesisEventArgs "
Defines payload that is sent with the event :py:attr:`TranslationRecognizer.synthesizing`.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationSynthesisEventArgs::Result "
`TranslationSynthesisResult`: Contains the translation synthesis result.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationSynthesisResult "
Defines the translation synthesis result, i.e. the voice output of the translated text in the target language.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationSynthesisResult::Reason "
`ResultReason`: Recognition reason.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::Translation::TranslationSynthesisResult::Audio "
`bytes`: The voice output of the translated text in the target language.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::NoMatchDetails "
Detailed information for NoMatch recognition results.
";

%feature("docstring") Microsoft::CognitiveServices::Speech::ServicePropertyChannel "
`ServicePropertyChannel`: Channels to pass property settings to service.
";

// provide docstrings for enums
// the docstring types are autogenerated from the corresponding C++ enums.
// Since there is no easy way to provide docstrings for individual enum values, the complete docstrings
// are specified here as restructured text to be parsed and formatted by sphinx.
%pythoncode %{

DocstringForPropertyId = """
   Defines speech property ids.

   *Values:*

    .. py:attribute:: SpeechServiceConnection_Key

      The Cognitive Services Speech Service subscription key. If you are using
      an intent recognizer, you need to specify the LUIS endpoint key for your
      particular LUIS app. Under normal circumstances, you shouldn't have to
      use this property directly. Instead, construct a
      :py:class:`.SpeechConfig` instance from a subscription key.

    .. py:attribute:: SpeechServiceConnection_Endpoint

      The Cognitive Services Speech Service endpoint (url). Under normal
      circumstances, you shouldn't have to use this property directly. Instead,
      construct a :py:class:`.SpeechConfig` instance from a subscription key.

      .. note::

        This endpoint is not the same as the endpoint used to obtain an access token.

    .. py:attribute:: SpeechServiceConnection_Region

      The Cognitive Services Speech Service region. Under normal circumstances,
      you shouldn't have to use this property directly. Instead, construct a
      :py:class:`.SpeechConfig` instance from a subscription key, an endpoint
      or an authorization token.

    .. py:attribute:: SpeechServiceAuthorization_Token

      The Cognitive Services Speech Service authorization token (aka access
      token). Under normal circumstances, you shouldn't have to use this
      property directly. Instead, construct a :py:class:`.SpeechConfig`
      instance from an authorization token, or set
      :py:attr:`.Recognizer.authorization_token`.

    .. py:attribute:: SpeechServiceAuthorization_Type

      The Cognitive Services Speech Service authorization type. Currently
      unused.

    .. py:attribute:: SpeechServiceConnection_EndpointId

      The Cognitive Services Custom Speech Service endpoint id. Under normal
      circumstances, you shouldn't have to use this property directly. Instead
      set :py:attr:`.SpeechConfig.endpoint_id`.

      .. note::

        The endpoint id is available in the Custom Speech Portal, listed under
        Endpoint Details.

    .. py:attribute:: SpeechServiceConnection_ProxyHostName

      The host name of the proxy server used to connect to the Cognitive
      Services Speech Service. Under normal circumstances, you shouldn't have
      to use this property directly. Instead, use
      :py:meth:`.SpeechConfig.set_proxy`.

    .. py:attribute:: SpeechServiceConnection_ProxyPort

      The port of the proxy server used to connect to the Cognitive Services
      Speech Service. Under normal circumstances, you shouldn't have to use
      this property directly. Instead, use :py:meth:`.SpeechConfig.set_proxy`.

    .. py:attribute:: SpeechServiceConnection_ProxyUserName

      The user name of the proxy server used to connect to the Cognitive
      Services Speech Service. Under normal circumstances, you shouldn't have
      to use this property directly. Instead, use
      :py:meth:`.SpeechConfig.set_proxy`.

    .. py:attribute:: SpeechServiceConnection_ProxyPassword

      The password of the proxy server used to connect to the Cognitive
      Services Speech Service. Under normal circumstances, you shouldn't have
      to use this property directly. Instead, use
      :py:meth:`.SpeechConfig.set_proxy`.

    .. py:attribute:: SpeechServiceConnection_Url

      The URL string built from speech configuration. This property is intended
      to be read-only. The SDK is using it internally.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceConnection_TranslationToLanguages

      The list of comma separated languages used as target translation
      languages. Under normal circumstances, you shouldn't have to use this
      property directly. Instead use
      :py:meth:`.SpeechTranslationConfig.add_target_language` and
      :py:attr:`.SpeechTranslationConfig.target_languages`.

    .. py:attribute:: SpeechServiceConnection_TranslationVoice

      The name of the Cognitive Service Text to Speech Service voice. Under
      normal circumstances, you shouldn't have to use this property directly.
      Instead set :py:attr:`.SpeechTranslationConfig.voice_name`.

      .. note::

        Valid voice names can be found `here <https://aka.ms/csspeech/voicenames>`_.

    .. py:attribute:: SpeechServiceConnection_TranslationFeatures

      Translation features. For internal use.

    .. py:attribute:: SpeechServiceConnection_IntentRegion

      The Language Understanding Service region. Under normal circumstances,
      you shouldn't have to use this property directly. Instead use
      :py:class:`.LanguageUnderstandingModel`.

    .. py:attribute:: SpeechServiceConnection_RecoMode

      The Cognitive Services Speech Service recognition mode. Can be
      "INTERACTIVE", "CONVERSATION", "DICTATION". This property is intended to
      be read-only. The SDK is using it internally.

    .. py:attribute:: SpeechServiceConnection_RecoLanguage

      The spoken language to be recognized (in BCP-47 format). Under normal
      circumstances, you shouldn't have to use this property directly. Instead,
      use :py:attr:`.SpeechConfig.speech_recognition_language`.

    .. py:attribute:: Speech_SessionId

      The session id. This id is a universally unique identifier (aka UUID)
      representing a specific binding of an audio input stream and the
      underlying speech recognition instance to which it is bound. Under normal
      circumstances, you shouldn't have to use this property directly. Instead
      use :py:attr:`.SessionEventArgs.session_id`.

    .. py:attribute:: SpeechServiceConnection_InitialSilenceTimeoutMs

      The initial silence timeout value (in milliseconds) used by the service.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceConnection_EndSilenceTimeoutMs

      The end silence timeout value (in milliseconds) used by the service.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceConnection_EnableAudioLogging

      A boolean value specifying whether audio logging is enabled in the service or not.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_RequestDetailedResultTrueFalse

      The requested Cognitive Services Speech Service response output format
      (simple or detailed). Under normal circumstances, you shouldn't have to
      use this property directly. Instead use
      :py:attr:`.SpeechConfig.output_format`.

    .. py:attribute:: SpeechServiceResponse_RequestProfanityFilterTrueFalse

      The requested Cognitive Services Speech Service response output profanity
      level. Currently unused.

    .. py:attribute:: SpeechServiceResponse_ProfanityOption

      The requested Cognitive Services Speech Service response output profanity
      setting. Allowed values are "masked", "removed", and "raw".

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_PostProcessingOption

      A string value specifying which post processing option should be used by
      service.  Allowed values are "TrueText".

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_RequestWordLevelTimestamps

      A boolean value specifying whether to include word-level timestamps in the
      response result.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_StablePartialResultThreshold

      The number of times a word has to be in partial results to be returned.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_OutputFormatOption

      A string value specifying the output format option in the response result.
      Internal use only.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_OutputFormatOption

      A boolean value to request for stabilizing translation partial results by omitting words in the end.

      .. note::
        This property id was added in version 1.5.0.

    .. py:attribute:: SpeechServiceResponse_JsonResult

      The Cognitive Services Speech Service response output (in JSON format).
      This property is available as :py:attr:`.RecognitionResult.json`.

    .. py:attribute:: SpeechServiceResponse_JsonErrorDetails

      The Cognitive Services Speech Service error details (in JSON format).
      Under normal circumstances, you shouldn't have to use this property
      directly. This property is available as
      :py:attr:`.RecognitionResult.error_json`.

    .. py:attribute:: SpeechServiceResponse_RecognitionLatencyMs

      The recognition latency in milliseconds. Read-only, available on final
      speech/translation/intent results. This measures the latency between
      when an audio input is received by the SDK, and the moment the final
      result is received from the service. The SDK computes the time
      difference between the last audio fragment from the audio input that is
      contributing to the final result, and the time the final result is
      received from the speech service.

      .. note::
        This property id was added in version 1.3.0.

    .. py:attribute:: CancellationDetails_Reason

      The cancellation reason. Currently unused.

    .. py:attribute:: CancellationDetails_ReasonText

      The cancellation text. Currently unused.

    .. py:attribute:: CancellationDetails_ReasonDetailedText

      The cancellation detailed text. Currently unused.

    .. py:attribute:: LanguageUnderstandingServiceResponse_JsonResult

      The Language Understanding Service response output (in JSON format).
      This property is available as
      :py:attr:`.IntentRecognitionResult.intent_json`.

    .. py:attribute:: AudioConfig_DeviceNameForCapture

      The device name for audio capture. Under normal circumstances, you shouldn't have to
      use this property directly.

      Instead, use the `device_name` parameter to construct a `AudioConfig` instance.

      .. note::
        This property id was added in version 1.3.0.

    .. py:attribute:: AudioConfig_NumberOfChannelsForCapture

      The number of channels for audio capture. Internal use only.

      .. note::
        This property id was added in version 1.3.0.

    .. py:attribute:: AudioConfig_SampleRateForCapture

      The sample rate (in Hz) for audio capture. Internal use only.

      .. note::
        This property id was added in version 1.3.0.

    .. py:attribute:: AudioConfig_BitsPerSampleForCapture

      The number of bits of each sample for audio capture. Internal use only.

      .. note::
        This property id was added in version 1.3.0.

    .. py:attribute:: AudioConfig_AudioSource

      The audio source. Allowed values are "Microphones", "File", and "Stream".

      .. note::
        This property id was added in version 1.3.0.

    .. py:attribute:: Speech_LogFilename

      The file name to write logs.

      .. note::
        This property id was added in version 1.4.0.

    """

DocstringForNoMatchReason= """
   Defines the possible reasons a recognition result might not be
   recognized.

   *Values:*

   .. py:attribute:: NotRecognized

      Indicates that speech was detected, but not recognized.

   .. py:attribute:: InitialSilenceTimeout

      Indicates that the start of the audio stream contained only
      silence, and the service timed out waiting for speech.

   .. py:attribute:: InitialBabbleTimeout

      Indicates that the start of the audio stream contained only
      noise, and the service timed out waiting for speech.

   .. py:attribute:: KeywordNotRecognized

      Indicates that the spotted keyword has been rejected by the
      keyword verification service.
      
      .. note::
        This property id was added in version 1.5.0.
    """

DocstringForCancellationReason = """
   Defines the possible reasons a recognition result might be
   canceled.

   *Values:*

   .. py:attribute:: Error

      Indicates that an error occurred during speech recognition.

   .. py:attribute:: EndOfStream

      Indicates that the end of the audio stream was reached.
    """

DocstringForCancellationErrorCode = """
   Defines error code in case that CancellationReason is Error.

   *Values:*

   .. py:attribute:: NoError

      No error.

   .. py:attribute:: AuthenticationFailure

      Indicates an authentication error.

   .. py:attribute:: BadRequest

      Indicates that one or more recognition parameters are invalid or
      the audio format is not supported.

   .. py:attribute:: TooManyRequests

      Indicates that the number of parallel requests exceeded the
      number of allowed concurrent transcriptions for the
      subscription.

   .. py:attribute:: Forbidden

      Indicates that the free subscription used by the request ran out
      of quota.

   .. py:attribute:: ConnectionFailure

      Indicates a connection error.

   .. py:attribute:: ServiceTimeout

      Indicates a time-out error when waiting for response from
      service.

   .. py:attribute:: ServiceError

      Indicates that an error is returned by the service.

   .. py:attribute:: ServiceUnavailable

      Indicates that the service is currently unavailable.

   .. py:attribute:: RuntimeError

      Indicates an unexpected runtime error.
    """

DocstringForOutputFormat = """
   *Values:*

   .. py:attribute:: Simple

   .. py:attribute:: Detailed
    """


DocstringForResultReason = """
   Specifies the possible reasons a recognition result might be
   generated.

   *Values:*

   .. py:attribute:: NoMatch

      Indicates speech could not be recognized. More details can be
      found in the :py:class:`.speech.NoMatchDetails` object.

   .. py:attribute:: Canceled

      Indicates that the recognition was canceled. More details can be
      found using the :py:class:`.speech.CancellationDetails` object.

   .. py:attribute:: RecognizingSpeech

      Indicates the speech result contains hypothesis text.

   .. py:attribute:: RecognizedSpeech

      Indicates the speech result contains final text that has been
      recognized. Speech Recognition is now complete for this phrase.

   .. py:attribute:: RecognizingIntent

      Indicates the intent result contains hypothesis text and intent.

   .. py:attribute:: RecognizedIntent

      Indicates the intent result contains final text and intent.
      Speech Recognition and Intent determination are now complete for
      this phrase.

   .. py:attribute:: TranslatingSpeech

      Indicates the translation result contains hypothesis text and
      its translation(s).

   .. py:attribute:: TranslatedSpeech

      Indicates the translation result contains final text and
      corresponding translation(s). Speech Recognition and Translation
      are now complete for this phrase.

   .. py:attribute:: SynthesizingAudio

      Indicates the synthesized audio result contains a non-zero
      amount of audio data

   .. py:attribute:: SynthesizingAudioCompleted

      Indicates the synthesized audio is now complete for this phrase.
    """

DocstringForServicePropertyChannel = """
   Defines channels used to pass property settings to service.

   .. note::
     Added in version 1.5.0.

   *Values:*

   .. py:attribute:: UriQueryParameter

      Uses URI query parameter to pass property settings to service.
    """

DocstringForProfanityOption = """
   Defines the setting for the profanity filter.

   .. note::
     Added in version 1.5.0.

   *Values:*

   .. py:attribute:: Masked

   .. py:attribute:: Removed

   .. py:attribute:: Raw

    """
%}