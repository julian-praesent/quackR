
#' @title Rubber duck debugging
#'
#' @description Use the power of rubber duck debugging to find bugs faster. Simply
#' talk the duck through your code by explaining the logic line by line and be
#' surprised by the EURICA moment once you find the bug by talking to a virtual
#' duck.
#'
#' During the conversation you can type "done" to exit.
#'
#' If the bug is persistent and your patience is running low, take a break and
#' enjoy some emotional support by running \code{\link{quack_a_geddon}}
#'
#' @export
#' @examples quack_debug()
quack_debug <- function() {

    # defining constants for vectors of bad yet hilarious openers and responses
    INTROS <- c(
        "Quack! I'm ready to **quack the case**!️",
        "Tell me everything. Don't worry, I won't send you a **bill**.",
        "Is your code feeling a bit **fowl** today?",
        "Let's get your **ducks in a row** and find that bug.",
        "I'm all ears... well, I don't actually have ears, but I'm listening!",
        "Ready to solve some **quack-ing** code mysteries?"
    )

    RESPONSES <- c(
        "Intriguing... tell me more.",
        "And what happens if you change that variable?",
        "Quack. (That translates to: 'Have you checked the syntax?')",
        "I see. Is that what you expected to happen?",
        "Fascinating. Go on.",
        "Are you sure that's not a logic error?",
        "Hmm, sounds like someone forgot a closing bracket...",
        "Quack-ceptable point. Go on.",
        "That sounds like a real wild goose chase.",
        "Are you just winging it with that for-loop?",
        "Beak-ause of that line, does the whole thing crash?",
        "Interesting... **preens feathers thoughtfully**",
        "Quack! (That's duck for 'Have you tried clearing your environment?')",
        "Is that logic truly water-tight?",
        "Waddle you do if that variable is actually not defined yet?",
        "You're making me go 'quackers' with this one!",
        "This sound quack-tacular, I'm all ears!"
    )

    # randomly select a fun intro to keep things interesting
    intro <- sample(INTROS, 1)
    message(intro)
    message("Just walk me through your code and let me know when you had a EURICA moment by typing 'done'.")

    # start rubber debugging session
    counter <- 1
    while(TRUE) {

        # explain option for motivational support every seven prompts
        if(counter %% 7 == 0) {
            message("Seems like this is a hard one to q(r)uack! If you need emotional support, just run 'quack_a_geddon()'")
        }

        input <- readline(prompt = "🦆 QUACK TO ME > ")

        # check if user wants to quit the debugging session
        if(tolower(input) == "done") {
            message("You found a bug for me, yummy!")
            message("Looking forward to waddling through code with you again soon 🦆")
            break
        }

        # provide super helpful advice to promote debugging skills
        msg <- sample(RESPONSES, 1)
        message(msg)

        counter <- counter + 1
    }
}
