*** Variables ***
${USERNAME_INPUT}    //input[@name="username" and @placeholder="Username"]
${PASSWORD_INPUT}    //input[@name="password" and @placeholder="Password"]
${LOGIN_BUTTON}      //button[@type="submit"]
${Dashboard_PAGE}    (//span[contains(., "Dashboard")])[2]
${ERROR_MESSAGE}     //div//p[contains(., "Invalid credentials")]
