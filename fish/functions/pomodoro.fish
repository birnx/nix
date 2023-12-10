function pomodoro
    echo $argv[1] | lolcat
    timer "$argv[2]"m
    spd-say "'$argv[1]' session done"
end

alias po="pomodoro"
alias wo="pomodoro work 45"
alias br="pomodoro break 10"
