# AI-Based-Prediction-of-Combinational-Logic-Depth-for-Identifying-Timing-Violations-in-RTL-Circuits

## Overview
This project aims to predict the **logical depth** of circuits using machine learning. The dataset contains circuit characteristics, and the model employs a **Random Forest Regressor** for making predictions. The implementation is performed in **Google Colab** for ease of execution.

## Directory Structure
```
Logic Depth Prediction/
│-- dataset/
│   ├── dataset.csv      # Input dataset file
│-- results/
│   ├── synth.sv         # Synthesized Verilog file (input)
│-- logical_depth_prediction_code.ipynb  # Jupyter Notebook with ML model
```

## Features Used
- `fan_in`: Number of inputs to a logic gate
- `num_gates`: Total number of gates in the circuit
- `path_length`: Length of the longest logic path

## Model & Methodology
1. **Data Preprocessing**
   - Load dataset (`dataset.csv`)
   - Standardize numerical features using `StandardScaler`
2. **Model Selection**
   - Train a `RandomForestRegressor` model
   - Evaluate using `Mean Squared Error`
3. **Prediction & Results**
   - Predict `logic_depth` based on circuit parameters
   - Store predictions in `predicted_path.csv`

## Installation & Usage
### **1. Clone Repository**
```sh
git clone https://github.com/your_username/logic-depth-prediction.git
cd logic-depth-prediction
```
### **2. Open in Google Colab**
Upload the notebook (`logical_depth_prediction_code.ipynb`) to Colab and run all cells.

### **3. Ensure Required Libraries**
```python
!pip install pandas scikit-learn seaborn matplotlib
```

## Results & Visualization
- The model predictions are saved in `predicted_path.csv`.
- Visualizations for feature importance and model evaluation are provided in the notebook.

## License
This project is licensed under the MIT License.
