
#' @title Escape the emotional Quack-A-Geddon
#'
#' @description Escape the debugging induced emotional Quack-A-Geddon and let
#' the wise duck of the magic pond fill you with the motivation to continue
#' your quest for bug free code.
#'
#' Once your inner pond has settled and your drive returns you should check out
#' \code{\link{quack_debug}} to gain a companion on your quest towards bug free
#' code.
#'
#' @export
#' @examples quack_a_geddon()
quack_a_geddon <- function() {

    # defining constant vector of motivational duck TED talks
    SPEECHES <- c(
        "You are a majestic swan in a world of pigeons. This bug is merely a pebble in your pond.",
        "I've seen your other code. You're a genius. This is just a temporary **fowl** up.",
        "Take a **gander** at how far you've come today. One bug can't stop this migration!",
        "Your brain is a high-performance engine; even Ferraris need to refuel at the pond.",
        "This error message is just the computer's way of saying it's jealous of your intellect.",
        "In the grand ecosystem of life, you are the Apex Coder. This bug is mere plankton.",
        "If I had real wings, I'd fly over there and give you a high-five. Since I don't, have a Quack!",
        "Stop brooding! You're about to have a **beak-through**! I can feel it in my virtual soul.",
        "You're not stuck. You're just **paddling** in place before a massive sprint.",
        "Your logic is water-tight. The universe is just testing your resolve.",
        "Even the best ducks occasionally forget how to land gracefully. Shake it off!",
        "I'm not just a duck; I'm your #1 fan. And I say you've got this.",
        "For the code is dark and full of terrors, but you are the light (and the bread)."
    )

    # print majestic duck ASCII art
    cat("
    ✨           DREAD NOT           ✨

                  __      _
                <(o )___/
                 ( ._> /
                  `---'

    ✨ FOR THE WISE DUCK HAS ARRIVED ✨

    ")

    # pause for dramatic effects
    ponder(5)

    # hold a random motivational speech
    message(paste("🦆 THE WISE DUCK QUACKS >", sample(SPEECHES, 1)))

    # pause for dramatic effects
    ponder(10)

    # quack the duck for good luck
    message("\nWould you like a luck quack before you continue your noble quest? (y/n)")
    input <- readline(prompt = "🦆 > ")

    if (tolower(input) == "y") {
        message("\n*Loud, encouraging quacking noises fill the room*")
        message("QUACK! QUACK! QUACK! 🦆🔥")
        message("The wise duck bestowes you with a luck quack duck buff.\n")

        # pause for dramatic effects
        ponder(10)
    }

    message("Now onwards, continue your epic quest to drive all the bugs out of these lines of code. Victory is yours!")
}

# waits for a given time and prints a duck every second like a loading screen
# @param seconds to wait in total
ponder <- function(seconds = 3) {
    for (i in 1:seconds) {
        Sys.sleep(1)
        cat("🦆 ")
    }
}
