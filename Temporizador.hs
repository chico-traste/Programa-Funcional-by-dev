import Control.Concurrent (threadDelay)
import Control.Monad (replicateM_)

-- Función que recibe otra función como parámetro
cadaSegundo :: IO () -> IO ()
cadaSegundo accion = replicateM_ 7 $ do
    accion
    threadDelay 1000000  -- 1 segundo (en microsegundos)

-- Función que será pasada como parámetro
mensaje :: IO ()
mensaje = putStrLn "Este mensaje se muestra cada segundo:)"

-- Punto de entrada
main :: IO ()
main = cadaSegundo mensaje