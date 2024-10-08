Open Multiple Tabs and Switch
    Open Browser    ${URL1}    Chrome
    Maximize Browser Window

    # Open a new tab using JavaScript
    Execute Javascript    window.open("${URL2}","_blank")

    # Get the list of all open tabs
    ${all_tabs}=    Get Window Handles

    # Switch to the newly opened tab (usually the last one)
    Switch Window    ${all_tabs}[-1]
    # Perform actions on the new tab
    Title Should Be    Google

    Close Window

    # Switch back to the original tab
    Switch Window    ${all_tabs}[0]
    # Perform actions on the original tab
    Title Should Be    Example Domain
    
    # Close Browser
