class Pankki{
    tilinumero = "";
    saldo = 0;
    historia = [];
    Talleta(summa){
        this.historia.push(new historiaElementti(Date.now, "Talletus", summa, this.saldo));
        saldo += summa;
    }
    Nosta(summa){
        if(summa > saldo){ return; }
        this.historia.push(new historiaElementti(Date.now, "Nosto", summa, this.saldo));
        saldo - summa;
    }
    NäytäTiedot(){
        console.log("Tilinumero: " + this.tilinumero + "\nSaldo: " + saldo)
        for(var i = 0; i < this.historia.length; i++){
            console.log(this.historia[i].Write())
        }
    }
    NäytäHistoria(){
        for(var i = 0; i < this.historia.length; i++){
            console.log(this.historia[i].Write())
        }
    }
}
class historiaElementti{
    constructor(date, action, sum, previousAmount){
        this.date = date;
        this.action = action;
        this.sum = sum;
        this.previousAmount = previousAmount;
    }
    Write(){
        return this.date + " " + this.action + " " + this.sum + " " + this.previousAmount + "\n";
    }
}
