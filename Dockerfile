# Use the official AWS Lambda Python 3.9 base image
FROM public.ecr.aws/lambda/python:3.9

# Copy function code into the container
COPY lambda_function.py ${LAMBDA_TASK_ROOT}

# Set the CMD to the handler (function_name.handler_name)
CMD ["lambda_function.lambda_handler"]
