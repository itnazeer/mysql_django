from opentelemetry import trace
import mysql.connector
from opentelemetry.instrumentation.mysql import MySQLInstrumentor
from opentelemetry.exporter.zipkin.json import ZipkinExporter
from opentelemetry.sdk.trace import TracerProvider
from opentelemetry.instrumentation.django import DjangoInstrumentor
from opentelemetry.sdk.trace.export import (
    BatchSpanProcessor,
    ConsoleSpanExporter,
)

provider = TracerProvider()
processor = BatchSpanProcessor(ConsoleSpanExporter())
provider.add_span_processor(processor)
trace.set_tracer_provider(provider)

DjangoInstrumentor().instrument()
MySQLInstrumentor().instrument()

#trace.set_tracer_provider(TracerProvider())
#tracer = trace.get_tracer(__name__)

# create a ZipkinExporter
#zipkin_exporter = ZipkinExporter(
    #  version=Protocol.V2
    # optional:
    # endpoint=""http://localhost:9411/api/v2/spans"
    # local_node_ipv4="192.168.0.1",
    # local_node_ipv6="2001:db8::c001",
    # local_node_port=31313,
    # max_tag_value_length=256
    # timeout=5 (in seconds)
#)

# Create a BatchExportSpanProcessor and add the exporter to it
#span_processor = BatchSpanProcessor(zipkin_exporter)

#trace.get_tracer_provider().add_span_processor(span_processor)

#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys

def main():
    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'blog.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()
