#Login
InputName = "//input[@name='email']"
InputPassword = "//input[@name='password']"
ButtonIngresar = "//input[@value='Login']"
#Interceptor
interceptor = "//img[@class='Blurxx']"
interceptor2 = "//a[@class='Link-item link' and @href='/perfl/newPass']"

#Agregar PC

BtnDesktop = "(//div[@class='collapse navbar-collapse navbar-ex1-collapse']//li[@class='dropdown'])[1]"
btndroppc = "(//div[@class='collapse navbar-collapse navbar-ex1-collapse']//li[@class='dropdown open']//li)[1]"
btnhome = "//header//div[@class='container']//h1//a"
btnaddcart = "(//div[@class='container' and @id='common-home']//div[@class='product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12'])[2]//div[@class='button-group']//i[@class='fa fa-shopping-cart']"
btninfoiph = "(//div[@class='container' and @id='common-home']//div[@class='product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12'])[2]//div[@class='caption']//a"
btnaddcart2 = "//div[@id='content']//button[@id='button-cart']"

#Carrusel
fotocarruselmain = "//a[@class='thumbnail']//img"
btncarruselright = "(//div[@class ='mfp-container mfp-image-holder mfp-s-ready']//button[@type='button'])[3]"
btncarruselcerrar = "(//div[@class ='mfp-container mfp-image-holder mfp-s-ready']//button[@type='button'])[1]"
btncart3 = "//header//div[@class='container']//div[@id='cart']//button"
btnviewcart = "(//ul[@class='dropdown-menu pull-right']//p//a)[1]"
btncheackout = "//div[@class='buttons clearfix']//div[@class='pull-right']"

#checkout
inputname2 = "//input[@name='firstname']"
inputlast = "//input[@name='lastname']"
inputcompany = "//input[@name='company']"
inputaddress1 = "//input[@name='address_1']"
inputcity = "//input[@name='city']"
inputpostcode = "//input[@name='postcode']"
selectcountry = "//form[@class='form-horizontal']//select[@name='country_id']//option[@value='154']"
selectzone = "//form[@class='form-horizontal']//select[@name='zone_id']//option[@value='2374']"
btnCheckout2 = "//div[@id='collapse-payment-address']//input[@type='button']"
btnradionwadd = "//div[@id='collapse-payment-address']//form//div[@class='radio'][2]//input"

#Delivery
btnDelivey = "//div[@id='collapse-shipping-address']//input[@type='button']"
inputtextareadelivey = "//div[@id='collapse-shipping-method']//textarea[@name='comment']"
btncontiDelivery = "//div[@id='collapse-shipping-method']//div[@class='buttons']//input[@type='button']"

#Payment Method
inputTerm = "//div[@id='collapse-payment-method']//div[@class='buttons']//input[@type='checkbox']"
btnContiPay = "//div[@id='collapse-payment-method']//div[@class='buttons']//input[@type='button']"
btnConfirOrder = "//div[@id='collapse-checkout-confirm']//div[@class='buttons']//input[@type='button']"
btnPlaceOrder = "//div[@id='common-success']//div//div[@class='buttons']//a[@class='btn btn-primary']"

#Buscar Items
inputSearch = "//div[@class='container']//div[@id='search']//input[@name='search']"
btnsearch = "//div[@class='container']//div[@id='search']//button[@type='button']"
searhimg = "//div[@class='product-thumb']//div[@class='image']"
