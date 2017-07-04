(ns dubstep.core)

(defn wub? [xs] (and (= (first xs) \W) (= (first (rest xs)) \U) 
                       (= (first (rest (rest xs))) \B)))

(defn supr-a-wub [xs] (rest (rest (rest xs))))

(defn song-decoder [xs]
  (letfn [(recursiva [ys zs i] ;la i es el conteo de wubs
            (if (empty? ys) zs
              (if (wub? ys) ;hay wub?
                (if (pos? i) (recursiva (supr-a-wub ys) zs (inc i)) ;ha habido wubs? i >= 1
                  ;como su ha habido, y vuelve a haber, no se separa con espacio
                  (recursiva (supr-a-wub ys) (str zs " ") (inc i)))
                  ;caso contrario, es el primer wub que encuentra
                (recursiva (rest ys) (str zs (first ys)) 0)
                ;no hay wub, entonces se guarda el carácter en zs, se reinicia el conteo de wubs
                )))]
    (clojure.string/trim (recursiva xs "" 0)))) ;trim para quitar el ultimo espacio


(song-decoder "AWUBBWUBC")
(song-decoder "WUBJKDWUBWUBWBIRAQKFWUBWUBYEWUBWUBWUBWVWUBWUB")
(song-decoder "AWUBWUBWUBBWUBWUBWUBC")


;top solution
(defn song-decoder2 [song]
  (clojure.string/trim 
    (clojure.string/replace song #"(WUB)+" " ")
))
(song-decoder2 "WUBJKDWUBWUBWBIRAQKFWUBWUBYEWUBWUBWUBWVWUBWUB")


