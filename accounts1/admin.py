from django.contrib import admin

from .models import Registercustomer,Registercustomertranscations,CustomerBankaccount,Userprofile,LoanCalculator,CurrencyConverter
admin.site.register(Registercustomer)
admin.site.register(Registercustomertranscations)
admin.site.register(CustomerBankaccount)
admin.site.register(Userprofile)
admin.site.register(LoanCalculator)
admin.site.register(CurrencyConverter)
admin.site.site_header ='Administration'


# Register your models here.
