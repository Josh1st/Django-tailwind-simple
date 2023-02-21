from django.contrib import admin
from django.urls import path
from django.conf import settings # 👈 needed to access the settings in settings.py
from home.views import home # 👈 import the view
from django.conf.urls.static import static # 👈 needed for static files


urlpatterns = [
    path('', home), # 👈 add path to the view
    path('admin/', admin.site.urls),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT) # 👈 add this so we can have static files