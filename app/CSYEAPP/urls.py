
  
from django.urls import path
from knox import views as knox_views
from . import views

urlpatterns = [
    path('v1/user/self/', views.get_user),
    path('login/', views.login),
    path('v1/user', views.register),
    path('healthz', views.health),
    #path('user/', views.UserAPI.as_view(), name='user'),
    path('logout/', knox_views.LogoutView.as_view(), name='knox_logout'),
    path('logoutall/', knox_views.LogoutAllView.as_view(), name='knox_logoutall'),
    path('change-password/', views.ChangePasswordView2.as_view(), name='change-password'),
]