@echo off
echo ============================================================
echo  CONFIGURACION ENTORNO VIRTUAL - LAB 7 IA
echo ============================================================
echo.

echo [1/4] Creando entorno virtual "venv_lab7"...
python -m venv venv_lab7
if %errorlevel% neq 0 (
    echo ERROR: No se pudo crear el entorno. Verifica que Python este instalado.
    pause
    exit /b 1
)

echo [2/4] Activando entorno virtual...
call venv_lab7\Scripts\activate.bat

echo [3/4] Instalando dependencias...
pip install --upgrade pip
pip install numpy matplotlib scikit-learn Pillow jupyter notebook ipykernel scipy

echo [4/4] Registrando kernel en Jupyter...
python -m ipykernel install --user --name=venv_lab7 --display-name="Python (Lab7 IA)"

echo.
echo ============================================================
echo  LISTO. Para ejecutar el notebook:
echo  1. Ejecuta:  venv_lab7\Scripts\activate
echo  2. Ejecuta:  jupyter notebook 01_aprendizaje_no_supervisado.ipynb
echo  3. En Jupyter selecciona kernel: "Python (Lab7 IA)"
echo ============================================================
pause
