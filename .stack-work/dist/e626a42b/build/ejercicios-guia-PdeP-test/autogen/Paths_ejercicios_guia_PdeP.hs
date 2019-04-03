{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_ejercicios_guia_PdeP (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Sylvina\\Desktop\\Ing Sistemas UTN\\Paradigmas de Programaci\243n\\ejercicios\\ejercicios-guia-PdeP\\.stack-work\\install\\5fdbb79e\\bin"
libdir     = "C:\\Users\\Sylvina\\Desktop\\Ing Sistemas UTN\\Paradigmas de Programaci\243n\\ejercicios\\ejercicios-guia-PdeP\\.stack-work\\install\\5fdbb79e\\lib\\x86_64-windows-ghc-8.6.4\\ejercicios-guia-PdeP-0.1.0.0-K9BqOeiXdDbDKAOEh1FDvB-ejercicios-guia-PdeP-test"
dynlibdir  = "C:\\Users\\Sylvina\\Desktop\\Ing Sistemas UTN\\Paradigmas de Programaci\243n\\ejercicios\\ejercicios-guia-PdeP\\.stack-work\\install\\5fdbb79e\\lib\\x86_64-windows-ghc-8.6.4"
datadir    = "C:\\Users\\Sylvina\\Desktop\\Ing Sistemas UTN\\Paradigmas de Programaci\243n\\ejercicios\\ejercicios-guia-PdeP\\.stack-work\\install\\5fdbb79e\\share\\x86_64-windows-ghc-8.6.4\\ejercicios-guia-PdeP-0.1.0.0"
libexecdir = "C:\\Users\\Sylvina\\Desktop\\Ing Sistemas UTN\\Paradigmas de Programaci\243n\\ejercicios\\ejercicios-guia-PdeP\\.stack-work\\install\\5fdbb79e\\libexec\\x86_64-windows-ghc-8.6.4\\ejercicios-guia-PdeP-0.1.0.0"
sysconfdir = "C:\\Users\\Sylvina\\Desktop\\Ing Sistemas UTN\\Paradigmas de Programaci\243n\\ejercicios\\ejercicios-guia-PdeP\\.stack-work\\install\\5fdbb79e\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "ejercicios_guia_PdeP_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "ejercicios_guia_PdeP_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "ejercicios_guia_PdeP_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "ejercicios_guia_PdeP_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "ejercicios_guia_PdeP_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "ejercicios_guia_PdeP_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
