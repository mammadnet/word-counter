function extract_word(feild){
        lower = tolower(feild)
        match(lower,/[A-Za-z0-9\-\']+/)
        word = substr(lower, RSTART, RLENGTH)
        return word
}

function show_general_info(num_of_character, num_of_word, num_of_line){
    print "WORD COUNTS"
    print "Total character", num_of_character
    print "Total word", num_of_word
    print "Total line", num_of_line
    print "---------------------------------------"
}

BEGIN {
    cols = 4
    colw = 25
}

{
    num_of_word += NF
    for (f=1; f <= NF; f++){
        num_of_character += length($f)
        word = extract_word($f)
        word_count[word] += 1
    }

}
END {
    show_general_info(num_of_character, num_of_word, NR-empty_line)
    idx = 0
    for (w in word_count){
        cell = sprintf("%-12s : %-5d", w, word_count[w])
        printf "%-*s", colw, cell

        idx++

    if (idx % cols == 0)
            printf "\n"
    }

}