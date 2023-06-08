.import "utilities2.js" as Utilities2
Qt.include("utilities3.js")

function greeting() {
    console.log("Hello there")
}

function combineAge(age1,age2) {
    console.log("Indirectly calling add() from utilities2")
    return Utilities2.add(age1,age2)
}
