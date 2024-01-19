var playerCards = [];
var dealerCards = [];
var hasWon = false;
function SetGame(){
    playerCards = [];
    dealerCards = [];
    playerCards.push(GetRandomCard(), GetRandomCard());
    dealerCards.push(GetRandomCard(), GetRandomCard());

    document.getElementById("button").style.display="block"
    document.getElementById("button2").style.display="block"

    document.getElementById("pelaajanSumma").innerHTML = "Pelaajan summa: " + GetTotal(playerCards)
    document.getElementById("tietokoneenSumma").innerHTML = "Tietokoneen summa: " + GetTotal(dealerCards)
    document.getElementById("lopputeksti").innerHTML = ""

    if(GetTotal(dealerCards) > 21){
        hasWon = true;
        EndGame(GetTotal(playerCards), GetTotal(dealerCards));
    }
    if(GetTotal(playerCards) > 21){
        hasWon = false;
        EndGame(GetTotal(playerCards), GetTotal(dealerCards));
    }
};
function GetRandomCard(){
    var cardNumber = Math.floor(Math.random()*13)+1;
    return cardNumber;
};
function Hit(){
    playerCards.push(GetRandomCard());
    if(GetTotal(playerCards) > 21){
        hasWon = false;
        EndGame(GetTotal(playerCards), GetTotal(dealerCards));
    }
    document.getElementById("pelaajanSumma").innerHTML = "Pelaajan summa: " + GetTotal(playerCards);
};
function Stay(){
    var playerTotal = GetTotal(playerCards);
    var dealerTotal = GetTotal(dealerCards);
    if(playerTotal > dealerTotal){
        hasWon = true;
        EndGame(playerTotal, dealerTotal);
    }
    if(playerTotal < dealerTotal){
        hasWon = false;
        EndGame(playerTotal, dealerTotal);
    }
    else{
        document.getElementById("lopputeksti").innerHTML = "Tasapeli! Sinulla on " + GetTotal(playerCards) + ", tietokoneella on "+ GetTotal(dealerCards) +".";
        document.getElementById("button").style.display="none"
        document.getElementById("button2").style.display="none"
    }
};
function EndGame(playertotal, dealertotal){
    if(hasWon){
        document.getElementById("lopputeksti").innerHTML = "Voitit! Sinulla on " + playertotal + ", tietokoneella on "+ dealertotal +".";
    }
    else{
        document.getElementById("lopputeksti").innerHTML = "Hävisit! Sinulla on " + playertotal + ", tietokoneella on "+ dealertotal +".";
    }
    document.getElementById("button").style.display="none"
    document.getElementById("button2").style.display="none"
};
function GetTotal(array){
    return array.reduce((a,b)=>a+b, 0);
};