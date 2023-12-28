from django.urls import path
from . import views

app_name = 'frontend'

urlpatterns = [
    path('', views.placesListMap, name = 'places_list_map'),
]