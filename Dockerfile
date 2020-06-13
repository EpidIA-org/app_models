FROM python:3.7
# ENV VARIABLES
ENV STORAGE_NAME="epidia-ingestion-data"
ENV SOURCE_FILENAME="formated-covid-data-from-datagouvfr-"
ENV DESTINATION_FILENAME="formated-covid-predictions-"
ENV KPI_OF_INTEREST="['new_hosp', 'new_death']"
ENV MULTIPROCESS=True
ENV HIERARCHICAL=False
ENV TIME_KEY=jour
ENV AREA_KEY=dep
ENV VALIDATION_STEPS=0
ENV TRAIN_DATA_POINTS=23
ENV STEPS_TO_PREDICT=10
ENV CLIP_TO_ZERO=False
# INSTANTIATE 
WORKDIR /app
COPY . /app
RUN pip install -r requirement.txt
# Run preds
CMD [ "python", "main.py" ]