function extract_word(feild){
        lower = tolower(feild)
        match(lower,/[A-Za-z0-9\-\']+/)
        word = substr(lower, RSTART, RLENGTH)
        return word
}

{
    count += NF
    for (f=1; f <= NF; f++){
        word = extract_word($f)
        word_count[word] += 1
    }

}
END {
    print count 
    for (w in word_count){
        print w, word_count[w]
    }

}