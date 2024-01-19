var date = new Date()
if(date.getHours() <= 11 && date.getHours() >= 7){
    console.log("hyvää homenta")
}
if(date.getHours() <= 18 && date.getHours() >= 12){
    console.log("hyvää päivää")
}
if(date.getHours() <= 22 && date.getHours() >= 19){
    console.log("hyvää iltaa")
}
if(date.getHours() >= 23 && date.getHours() <= 6){
    console.log("hyvää yötä")
}