from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from products import views
from django.contrib.auth import views as auth_views
from django.urls import path, include


urlpatterns = [
    path('admin/', admin.site.urls),  # Standard Admin
    path('', views.home, name='home'),
    path('product/<int:pk>/', views.product_detail, name='product_detail'),
    path('checkout/<int:pk>/<int:qty>/', views.checkout, name='checkout'),

    # Customer Account URLs
    path('profile/', views.profile_view, name='profile'),
    path('login/', views.customer_login, name='customer_login'),

    path('logout/', views.customer_logout, name='logout'),
    path('profile/edit/', views.edit_profile, name='edit_profile'),
    path('order/receipt/<int:order_id>/',
         views.view_receipt, name='view_receipt'),
    path('signup/', views.customer_signup, name='customer_signup'),

    path('admin/dashboard/', views.admin_dashboard, name='admin_dashboard'),
    path('shop/', views.shop, name='shop'),
    path('about/', views.about, name='about'),
    path('a-few-words/', views.a_few_words, name='a_few_words'),
    path('payment/bkash/<int:order_id>/',
         views.bkash_gateway_view, name='bkash_gateway'),
    path('bkash-receipt/<int:order_id>/',
         views.bkash_receipt, name='bkash_receipt'),
    # Nagad Routes
    path('nagad-gateway/<int:order_id>/',
         views.nagad_gateway_view, name='nagad_gateway'),
    path('nagad-receipt/<int:order_id>/',
         views.nagad_receipt, name='nagad_receipt'),

    # Rocket Routes
    path('rocket-gateway/<int:order_id>/',
         views.rocket_gateway_view, name='rocket_gateway'),
    path('rocket-receipt/<int:order_id>/',
         views.rocket_receipt, name='rocket_receipt'),
    path('update-transaction/<int:order_id>/',
         views.update_transaction_id, name='update_transaction'),
    path('fix-my-db-payment-logic-99/', views.fix_payment_methods),
    path('payment-gateway/<int:order_id>/',
         views.payment_gateway_view, name='payment_gateway'),
    path('submit-review/', views.submit_review, name='submit_review'),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
