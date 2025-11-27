{
    count += NF
    for (w=1; w < NF; w++){
        match($w,/[A-Za-z0-9\-\']+/)
        word = substr($w, RSTART, RLENGTH)
        word_count[word] += 1
    }

}
END {
    print count 
    for (w in word_count){
        print w, word_count[w]
    }

}