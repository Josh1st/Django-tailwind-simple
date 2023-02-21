from django.http import HttpResponse
from django.template import loader
import datetime


def home(request):
    now = datetime.datetime.now()
    template = loader.get_template('home/index.html')
    context = {
        'now': now,
    }
    return HttpResponse(template.render(context, request))