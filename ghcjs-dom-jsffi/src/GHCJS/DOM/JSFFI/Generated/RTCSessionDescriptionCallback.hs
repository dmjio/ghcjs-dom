{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCSessionDescriptionCallback
       (newRTCSessionDescriptionCallback,
        newRTCSessionDescriptionCallbackSync,
        newRTCSessionDescriptionCallbackAsync,
        RTCSessionDescriptionCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallback ::
                                 (MonadIO m) =>
                                   (Maybe RTCSessionDescription -> IO ()) ->
                                     m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallback callback
  = liftIO
      (RTCSessionDescriptionCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ sdp -> fromJSValUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackSync ::
                                     (MonadIO m) =>
                                       (Maybe RTCSessionDescription -> IO ()) ->
                                         m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackSync callback
  = liftIO
      (RTCSessionDescriptionCallback <$>
         syncCallback1 ContinueAsync
           (\ sdp -> fromJSValUnchecked sdp >>= \ sdp' -> callback sdp'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCSessionDescriptionCallback Mozilla RTCSessionDescriptionCallback documentation> 
newRTCSessionDescriptionCallbackAsync ::
                                      (MonadIO m) =>
                                        (Maybe RTCSessionDescription -> IO ()) ->
                                          m RTCSessionDescriptionCallback
newRTCSessionDescriptionCallbackAsync callback
  = liftIO
      (RTCSessionDescriptionCallback <$>
         asyncCallback1
           (\ sdp -> fromJSValUnchecked sdp >>= \ sdp' -> callback sdp'))