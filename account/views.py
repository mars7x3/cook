from django.contrib.auth.views import LoginView
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render

# Create your views here.
from django.urls import reverse_lazy
from django.views.generic import CreateView, DetailView

from account.forms import RegistrationForm
from account.models import User


class RegisterView(SuccessMessageMixin,CreateView):
    model = User
    template_name = 'account/registration.html'
    form_class = RegistrationForm
    success_url = reverse_lazy('home')
    success_message = 'Successfully registered'

class SignInView(LoginView):
    template_name = 'account/login.html'

# class ProfileView(DetailView):
#     model = User
#     template_name = 'account/profile.html'

def profile(request):

    return render(request,'account/profile.html')
