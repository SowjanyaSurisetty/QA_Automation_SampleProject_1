*** Settings ***
Library    SeleniumLibrary
*** variables ***
${url}    https://www.just-eat.co.uk/
*** Test Cases ***
TC001_Open_Browser.
    Open Browser    ${url}    chrome
Tc_Maximize_browser_window.
    Maximize Browser Window
Tc_Apply_implicit_wait.
    Get Selenium Implicit Wait
Tc002_Given_Postal_code
    Input Text    //input[@name='postcode']    AR51 1AA 
When_I_Click_On_SearchButton_for_Restaurents
    click Element    //button[@type='submit']
Then_Should_Contain_Restaurent_names
    Page should contain    open restaurants
    
Tc003_Given_RestaurantName_For_Search
    sleep    10
    Input Text     //input[@id='dish-search']    Pizza-Hut shell Menu
    Click Element    //button[@type='submit']
When_Clicked_On_Search_By_Reataurant
    Log    Clicked On Search 
Then_Page_Should_Contain_Pizza-Hut shell Menu
    Click Element    //*[@class='c-listing-item-info']
    Page Should Contain    Pizza Hut - Shell Menu
    sleep    10
Tc004_When_Select_Pizzas
    click Element    //a[text()='Pizzas']
    sleep    10
Then_Select_An_Option
    click Element    //input[@value='27884977']/following::button[1]
    sleep    10
Tc005When_Choose_your_Small_Crust
    click Element    //*[@class='c-menupicker__dialog show']/div/form/div[2]/label/input/following::div[text()='Please Choose Your Small Crust']
    sleep    10
Then_Choose_Classic_Crust_with_Garlic_Sprinkle
    click Element    //*[@class='c-menupicker__option-details']/div[text()='Classic Crust With Garlic Sprinkle']
    sleep    10
Then_Skip_Extras
    click Element    //*[@value='Skip Extras']
    sleep    10
Then_Click_On_Add_To_Basket
    click Element    //*[@value='Add to Basket']
    sleep    10
Then_Check_out
    click Element    //button[@class='checkoutButton']
And_Close_Browser
    close Browser
    

    
*** Keyword ***