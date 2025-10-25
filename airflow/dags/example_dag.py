"""
Example DAG for Financial Ministry Study
This is a placeholder - will be implemented in Sprint 4
"""

from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.python import PythonOperator

def hello_world():
    print("Hello from Airflow!")
    print("This DAG will load CSV data into PostgreSQL")

# Define default arguments
default_args = {
    'owner': 'finance_team',
    'depends_on_past': False,
    'start_date': datetime(2024, 1, 1),
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# Create DAG
dag = DAG(
    'example_finance_dag',
    default_args=default_args,
    description='Example DAG for data loading',
    schedule_interval=timedelta(days=1),
    catchup=False
)

# Define task
task1 = PythonOperator(
    task_id='hello_task',
    python_callable=hello_world,
    dag=dag,
)
