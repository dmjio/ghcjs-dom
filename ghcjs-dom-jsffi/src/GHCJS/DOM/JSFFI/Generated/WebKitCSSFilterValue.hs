{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitCSSFilterValue
       (js__get, _get, _get_, _getUnsafe, _getUnchecked,
        pattern CSS_FILTER_REFERENCE, pattern CSS_FILTER_GRAYSCALE,
        pattern CSS_FILTER_SEPIA, pattern CSS_FILTER_SATURATE,
        pattern CSS_FILTER_HUE_ROTATE, pattern CSS_FILTER_INVERT,
        pattern CSS_FILTER_OPACITY, pattern CSS_FILTER_BRIGHTNESS,
        pattern CSS_FILTER_CONTRAST, pattern CSS_FILTER_BLUR,
        pattern CSS_FILTER_DROP_SHADOW, js_getOperationType,
        getOperationType, WebKitCSSFilterValue(..),
        gTypeWebKitCSSFilterValue)
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
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        WebKitCSSFilterValue -> Word -> IO (Nullable CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
_get ::
     (MonadIO m) => WebKitCSSFilterValue -> Word -> m (Maybe CSSValue)
_get self index
  = liftIO (nullableToMaybe <$> (js__get (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
_get_ :: (MonadIO m) => WebKitCSSFilterValue -> Word -> m ()
_get_ self index = liftIO (void (js__get (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
_getUnsafe ::
           (MonadIO m, HasCallStack) =>
             WebKitCSSFilterValue -> Word -> m CSSValue
_getUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js__get (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
_getUnchecked ::
              (MonadIO m) => WebKitCSSFilterValue -> Word -> m CSSValue
_getUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js__get (self) index))
pattern CSS_FILTER_REFERENCE = 1
pattern CSS_FILTER_GRAYSCALE = 2
pattern CSS_FILTER_SEPIA = 3
pattern CSS_FILTER_SATURATE = 4
pattern CSS_FILTER_HUE_ROTATE = 5
pattern CSS_FILTER_INVERT = 6
pattern CSS_FILTER_OPACITY = 7
pattern CSS_FILTER_BRIGHTNESS = 8
pattern CSS_FILTER_CONTRAST = 9
pattern CSS_FILTER_BLUR = 10
pattern CSS_FILTER_DROP_SHADOW = 11
 
foreign import javascript unsafe "$1[\"operationType\"]"
        js_getOperationType :: WebKitCSSFilterValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue.operationType Mozilla WebKitCSSFilterValue.operationType documentation> 
getOperationType :: (MonadIO m) => WebKitCSSFilterValue -> m Word
getOperationType self = liftIO (js_getOperationType (self))