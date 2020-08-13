FROM kumar1996/stack:latest
WORKDIR /app
COPY app.py /app
COPY templates /app/templates
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
