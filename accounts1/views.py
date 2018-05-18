from django.shortcuts import render,redirect
from accounts1.forms import RegistrationForm
from django.contrib.auth.decorators import login_required
from django.views.generic import TemplateView
from accounts1.models import  Registercustomer,CustomerBankaccount,Registercustomertranscations,LoanCalculator,CurrencyConverter
def home(request):
    return  render(request,'accounts1/home.html')
def about_us(request):
    return  render(request,'accounts1/about_us.html')
def contact(request):
    return  render(request,'accounts1/contact.html')
def user_profile(request):
    return  render(request,'accounts1/user_profile.html')
def business_loans_and_leases(request):
    return render(request,'accounts1/business_loans_and_leases.html')
def consumer_loans(request):
    return  render(request,'accounts1/consumer_loans.html')
def special_loan_schemes(request):
    return  render(request,'accounts1/special_loan_schemes.html')
def agricultural_loans(request):
    return  render(request,'accounts1/agricultural_loans.html')
def bank_over_draft(request):
    return  render(request,'accounts1/bank_over_draft.html')
def trade_finance(request):
    return  render(request,'accounts1/trade_finance.html')
def micro_business_loans(request):
    return  render(request,'accounts1/micro_business_loans.html')
def solar_loans(request):
    return  render(request,'accounts1/solar_loans.html')
def home_improvement_loans(request):
    return  render(request,'accounts1/home_improvement_loans.html')
def savings_account(request):
    return  render(request,'accounts1/savings_account.html')
def current_account(request):
    return  render(request,'accounts1/current_account.html')
def cente_fixed_deposit_account(request):
    return  render(request,'accounts1/cente_fixed_deposit_account.html')
def ATM_services(request):
    return  render(request,'accounts1/ATM_services.html')
def ATM_cardless_withdraw(request):
    return  render(request,'accounts1/ATM_cardless_withdraw.html')
def cente_point(request):
    return  render(request,'accounts1/cente_point.html')
def Ewater_payments(request):
    return  render(request,'accounts1/Ewater_payments.html')
def airtel_money(request):
    return  render(request,'accounts1/airtel_money.html')
def MTN_mobile_money_transfer(request):
    return  render(request,'accounts1/MTN_mobile_money_transfer.html')
def western_union_money_transfer(request):
    return  render(request,'accounts1/western_union_money_transfer.html')
def platinum_banking(request):
    return  render(request,'accounts1/platinum_banking.html')
def school_fees_payment_services(request):
    return  render(request,'accounts1/school_fees_payment_services.html')
def standing_orders(request):
    return  render(request,'accounts1/standing_orders.html')

class RegisterCustomer(TemplateView):
    template_name = 'accounts1/RegisterCustomer.html'
    def get(self,request):
        customers = Registercustomer.objects.filter(first_name='Humphrey')
        args = {'customers': customers}
        return render(request,self.template_name, args)
class CustomerBankAccount(TemplateView):
    template_name = 'accounts1/CustomerBankAccount.html'

    def get(self, request):
        accounts = CustomerBankaccount.objects.filter(full_name='Humphrey Ntwatwa')
        args = {'accounts': accounts}
        return  render(request,self.template_name,args)
class loan_calculator(TemplateView):
    template_name = 'accounts1/loan_calculator.html'

    def get(self, request):
        loans= LoanCalculator.objects.filter(amount=500000)
        args = {'loans': loans}
        return  render(request,self.template_name,args)
class currency_converter(TemplateView):
    template_name = 'accounts1/currency_converter.html'

    def get(self, request):
        currencies= CurrencyConverter.objects.all()
        args = {'currencies': currencies}
        return  render(request,self.template_name,args)


@login_required
def view_profile(request):
        args={'user':request.user}
        return  render(request,"accounts1/profile.html",args)

class RegisterCustomerTranscations(TemplateView):
        template_name = 'accounts1/RegisterCustomerTranscations.html'
        def get(self, request):
            transactions = Registercustomertranscations.objects.all().order_by('Transcation_date')

            args = {'transactions':transactions}
            return render(request, self.template_name, args)

def register(request):
    if request.method=='POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return  redirect('/accounts1')
    else:
        form =RegistrationForm()
        args = {'form':form}
        return render (request,"accounts1/register.html",args)
def logout(request):
    logout(request)
    return redirect('/accounts1')
