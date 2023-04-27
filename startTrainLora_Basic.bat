set MODEL_NAME="wavymulder/portraitplus"
set INSTANCE_DIR="images"
set OUTPUT_DIR="portraitp2"

python "P:\CodeDump\diffusers\examples\dreambooth\train_dreambooth_lora.py" --pretrained_model_name_or_path=%MODEL_NAME%  --instance_data_dir=%INSTANCE_DIR% --output_dir=%OUTPUT_DIR% --instance_prompt="A photo of PdroPascl" --class_data_dir="A photo of Pedro Pascal" --resolution=512 --train_batch_size=1 --gradient_accumulation_steps=1 --checkpointing_steps=50000 --learning_rate=1e-4 --lr_scheduler="constant" --lr_warmup_steps=0 --max_train_steps=10000 --validation_prompt="portrait+ style A photo of PdroPascl on the beach" --validation_epochs=50000 --seed="42"