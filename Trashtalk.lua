local random

events.register_event(
    "player_death",
    function(e)
        local attacker = e:get_int("attacker")
        local attacker_to_player = engine.get_player_for_user_id(attacker)

        local lp_idx = engine.get_local_player_index()

        if attacker_to_player == lp_idx then
            phrases = {
                "That was a big one on my screen.",
                "Your poorness pisses me off.",
                "One.",
                "Go on using cracked cheats.",
                "Missed due to crack",
                "Fucking junkie kid.",
                "UID?",
                "NN",
                "Playing with free cheat again today?",
                "Unemployed scooter rider.",
                "Retard",
                "More levelheaded than your father.",
                "Your father begs for milk.",
                "Already got a job?",
                "Stay Skeetless.",
                "What do you use? Ah yes, free cheats.",
                "Go refound, oh thats right free cheat.",
                "Enjoy VACation!",
                "Do you have a mental impairment?",
                "1 you Nobody.",
                "Single-celled kid.",
                "When RQ?",
                "AHAHAHAHAHHAHA 1.",
                "Meanwhile, very amusing.",
                "Cringelord",
                "ez",
                "Quiet you high school dropout.",
                "Can you tell your diary first how bad you are in HVH.",
                "Thanks for the laugh kick, your existence is very amusing."
            }
            random = math.random(1, 7)
            console.execute_client_cmd("say " .. phrases[random])
        end
    end
)
