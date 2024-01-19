function testEmail(email){
    var split1 = email.split('@');
    if (split1.length != 2){
        console.log("Invalid Email");
        return;
    }
    var split2 = email.split('.');
    
    if (split2.length != 2){
        console.log("Invalid Email");
        return;
    }
    console.log("Email is valid");
}
testEmail("gr275809@gradia.fi");