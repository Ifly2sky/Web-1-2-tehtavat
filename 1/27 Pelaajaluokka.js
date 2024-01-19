class Pelaaja{
    constructor(nimi){
        this.nimi = nimi;
        this.pisteet = 0;
        this.elämät = 3;
        this.taso = 1;
        this.kokemuspisteet = 0;
    }
    Pelaa(pisteet, kokemuspisteet) {
        this.pisteet += pisteet;
        this.kokemuspisteet += kokemuspisteet/10;
    }
    Havia(){
        elämät -= 1;
    }
    NouseTasolle(){
        if(this.kokemuspisteet >= 100){
            this.taso++;
            this.kokemuspisteet -= 100;
        }
    }
    NaytaTiedot(){
        console.log(
            "Nimi: " + this.nimi + 
            "\nPisteet: " + this.pisteet + 
            "\nElämät: " + this.elämät + 
            "\nTaso: " + this.taso + 
            "\nKokemuspisteet: " + this.kokemuspisteet
        );
    }
}