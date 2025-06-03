= Случайные величины

== Определение измеримой функции, абстрактной и действительной. Критерий измеримости действительных функций (полупрямые).

*Абстрактная функция* $f(x) : X -> y$ называется *$(s_x,s_y)$-измеримой*, если $forall A in S_y space f^(-1) (A) in S_x$ 

*Действительная функция* $f(x)$, определена на множестве $X in RR$ называется $underline(#[Измеримой])$ ($mu$-измеримой, если $forall$ борелевского множества $b$ на числовой прямой $f^(-1)(b) in S_mu$)

*Критерий измеримости действительных функций:* Действительная функция $f(x)$ измерима $<=>$ $forall c in RR$ множество ${x: f(x) < c}$ измеримо.

Доказательство: _Необходимость:_ Пусть $f(x)$-измерима. Тогда по определению $(-infinity, c) in B(S_mu)$, т.к. $(-infinity, c)$ --- борелевское множество.

_Достаточность:_ Пусть известно, что ${x: f(x) < c} = (-infinity, c) in S_mu$. Построим класс $Sigma = {(-infinity, c)}$ (из полуинтервала лучи из $RR$) замыкание этого класса.

$B(Sigma)$ относительно операций $union, space inter space \\, space delta$ является борелевской $sigma$-алгеброй на прямой. По условию $(-infinity, c)$ --- $mu$-измеримо. Следовательно, $ f^(-1)(Sigma) subset S_mu $

Тогда $ f^(-1)(B(Sigma)) = B(f^(-1)(Sigma)) subset B(S_mu) = S_mu $

== Случайная величина (сл.в.). Виды сл.в.(дискретная и абсолютно непрерывная)

Пусть $(Omega, cal(F), P)$ --- вероятностное пространство. *Случайной величиной* называется действительнозначная функция $xi: Omega -> RR$, такая что $forall x in RR$ множество ${omega: xi(omega) < x} in cal(F)$ является случайным событием.

Случайная величина называется *дискретной*, если она принимает конечное или счётное множество значений.

Обозначим за $x_k$ значение случайной величины, тогда $xi in {x_1, x_2, ..., x_k, ...}$ --- множество значений. $p_k = P{xi = x_k}$ --- вероятность того, что сл.в. примет значение $x_k$. Т.к. ${x_1, x_2, ...}$ --- множество всех возможных  сл.в. $xi$, то события $cal(A)_k = {omega: xi(omega) = x_k}$ составляют полную группу попарно несовместных событий. $union.big cal(A)_k = Omega$. Следовательно $ limits(sum)_(k = 1)^infinity p_k = limits(sum)_(k = 1)^infinity P{xi(omega) = x_k} = 1 $ Таким образом $ limits(sum)_(k = 1)^infinity p_k = 1 $

Случайная величина называется *абсолютно непрерывной*, если существует такая неотрицательная функция $f(x)$, что $ forall x in RR space F(x) = limits(integral)_(-infinity)^x f(t) d t $

т.е. $d F(t) = f(t) d t$.

// а вот то, что было для дискретной величины, оно типа не нужно? Его просто нет

== Функция распределения (ф.р.) и ее свойства.

Функцией распределения вероятностей случайной величины $xi$ называется функция $ F(x) = P{omega : xi(omega) < x} $
или другие формы записи:
$F_xi (x) = P{xi < x}; space F_xi (x) = P{xi in (-infinity, x)}$

*Свойства функции распределения:*
+ $ 0 <= F_xi (x) <= 1 space forall x in RR$
+ $F_xi (x)$ --- неубывающая, непрерывная слева функция. \ \
+ $display(limits(lim)_(x -> +infinity) F_xi (x) = 1";" space limits(lim)_(x->-infinity) F_xi (x) = 0)$ \ \ 
+ $P{a <= xi < b} = F_xi (b) - F_xi (a)$
+ $P{xi = x_0} = F(x_0 + 0) - F(x_0)$

Доказательства:

1) $0 <= F(x) <= 1$ --- очевидно в силу определения $ F(x) =  P{xi < x} space "и" space  0 <= P(A) <= 1 $

2) _Неубывающая:_  По определению требуется показать, что $ forall x_1 < x_2 space F(x_1) <= F(x_2) $
  $ (-infinity; x_2) = underbrace((- infinity; x_1) union [x_1; x_2], "непересек.") $\
  $ F(x_2) = P{xi in (- infinity, x_2)} = P{xi in (-infinity, x_1) union xi in [x_1, x_2)} \ = underbrace({xi in (- infinity, x_1)}, >=0) + underbrace(P{xi in \(x_1, x_2], >= 0)} >= P{xi in (-infinity, x_1)} = F(x_1) $\
  Таким образом $F(x_2) >= F(x_1)$

4) Полагая, что $x_1 = a, space x_2 = b$ получаем 
  $ F(b) = F(a) + P{xi in [a, b]} \
  P{xi in [a, b]} = P{a <= xi < b} = F(b) - F(a) $

_Непрерывная слева:_ Требуется показать, что для возрастающей последовательности ${x_n}$ такой, что $ x_1 < x_2 < ..., space limits(lim)_(n->infinity) x_n = x $

последовательность $ F(x_n) limits(->)_(n->infinity) F(x) space "или" limits(lim)_(n->infinity) F(x_n) = F(x) $

Рассмотрим последовательность событий $cal(A)_n = {omega : xi(omega) < x_n}$

Имеем $ forall n cal(A)_n subset A_(n + 1) space (x_n < x_(n+1)) \ 
limits(union.big)_(n = 1)^infinity cal(A)_n = cal(A) = (- infinity, x) "т.к." x_n -> x $ 

Т.е. последовательность ${cal(A)_n}$ удовлетворяет свойству непрерывности вероятностной меры $P(limits(union.big)_(n = 1)^infinity) = limits(lim)_(n -> infinity) P(A_n)$. Тогда можем записать

$ limits(lim)_(n->infinity) F(x_n) = limits(lim)_(n -> infinity) P{xi in (- infinity, x_n)} = P{limits(union.big)_(n = 1)^infinity xi in (- infinity, x_n)} = P{xi in (- infinity, x)} = F(x) $

Применяя этот метод к ${x_n}$ такой, что $x_n < x_(n + 1); space x_n -> infinity$ получаем свойство 

3) $ limits(lim)_(x -> infinity) F(x) = 1\
"при" {x_n}", такой, что " {x_n} -> -infinity space limits(lim)_(x->infinity) F(x) = 0 $

5) $ F(x_0 + delta x) = F(x_0) + P{x_0 <= xi < x + delta x} $

Пусть $Delta x -> 0$.
$ underbrace(F(x_0 + 0), "т.к. F(x) непрерывна слева, но не справа") - F(x_0) = P{xi = x_0} $

// Пример построения на 8 баллов?

== Теорема о существовании сл.в., соответствующей функции со свойствами ф.р.

*Теорема о существовании случайной величины.*

Пусть $F(x)$ --- неубывающая непрерывная слева функция, принимающая значения на отрезке $[0, 1]$. Тогда существует вероятностное пространство $(Omega, cal(F), P)$ и сл.в. $xi$ на нем, для которой $F(x)$ является функцией распределения, т.е
$ P{xi < x} = F(x) $
Пусть $f(x)$ --- неотрицательная на $RR$ функция, такая, что $limits(integral)_(-infinity)^infinity f(x) d x = 1$. Тогда существует вероятностное пространство $(Omega, cal(F), P)$ и сл. в. $xi$ на нем, для которой $f(x)$ является функцией плотности распределения вероятности, т.е.
$ P{xi < x} = limits(integral)_(-infinity)^x f(t) d t $

// А где доказательство?!

== Функция плотности распределения сл.в. Ее свойства.  
*Функцией плотности распределения вероятностей* случайной величины $xi$ называется функция $f(x)$, такая что
+ $f(x) > 0 space forall x in RR$ \ \
+ $F'(x) overbrace(=, "п.в.") f(x)$. (_п.в. значит "почти всюду за исключением множества меры нуль_) \ \
+ $limits(integral)_(-infinity)^(+infinity) f(x) d x = 1$

== Дискретная сл.в. Основные типы дискретных распределений (постановка задачи, закон распределения): распределение Бернулли, равномерное дискретное, биномиальное, пуассоновское, геометрическое распределения.

=== Распределение Бернулли
*Эксперимент:* Пусть в пространстве элементарных исходов эксперимента $Omega$ рассматриваются только события $A$ и $overline(A)$. Например, эксперимент "подброшенная монета": $Omega = {"о", "р"}$, или "извлечена 1 карта из колоды в 36 карт": $Omega = {k_1, k_2, ... k_(36)}$\
$A = {T_1, T_2, T_3, T_4}$ --- извлечен "туз", $P(A) = 1/ 9$\
$overline(A)$ --- не извлечён туз, $P(overline(A)) = 8 / 9$

Т.е. события $A$ (успех) и $overline(A)$ (неуспех) выбираются не обязательно равновозможными. 

$A union.big overline(A) = Omega$. Обозначим $p = P(A), space q = P(overline(A))$, тогда $p + q = 1$.

Построим случайную величину $epsilon$: \ 
$epsilon = 0$, если наступило событие $overline(A)$ \
$epsilon = 1$, если наступило событие $A$.

*Ряд распределения:*
#align(center,
table(
  columns: 3,
[$epsilon$],
[0],
[1],
[p],
[q],
[p])
)

*Закон распределения:*

$ P{epsilon = k} = q^(1 - k) p^k; space k = 0, 1 $

*Функция распределения:*
$ F(x) = cases(
  0 "," x <= 0,
  q "," 0 < x <= 1,
  1 "," x > 1
) $

Сл.в $epsilon$ имеет распределение Бернулли обозначается $epsilon ~ "Bern"(p)$

=== Биномиальное распределение

$xi ~ "Bin"(n, p)$. $n$ --- количество испытаний (опытов Бернулли), $p$ --- вероятность успеха в одном испытании.

*Эксперимент*: проводится $n$ независимых одинаковых испытаний Бернулли, т.е. различают только "успех" и "неуспех"

Например, "из 20 колод извлечено по одной карте", испытание --- "из одной колоды извлечена одна карта".\
"Успех" --- "извлечён туз".\
$ n = 20; space p = 1 / 9 $
Сл.в. $xi$ --- количество тузов среди 20 извлеченных карт. $xi ~ "Bin"(20; 1 / 9)$

Таким образом $xi$ --- количество успехов в $n$ испытаниях Бернулли. 

$xi$ принимает значения $0; 1; ... n$

*Закон распределения*: $ P{xi = k} = C_n^k p^k q^(n - k) $ --- формула Бернулли

=== Распределение Пуассона
$xi ~ "Pois"(lambda)$. lambda --- параметр распределения.

*Эксперимент:* Пусть проводится эксперимент по схеме Бернулли. Предположим, что $n$ --- количество испытаний велико. 

Рассмотрим сл.в. $xi$ --- количество успехов в большом числе испытаний Бернулли. Тогда математической моделью такого эксперимента выберем величину $xi$ со значениями из множества ${0, 1, 2, ...} = ZZ = {0} union.big NN$

_Вывод закона распределения опущен ввиду того, что в программе для этого блока указано только "постановка задачи, закон распределения". При желании можно найти на Ипсилоне в 7-й лекции_

*Закон распределения*

$ P{xi = k} = (e^(-lambda) lambda^k) / (k!) $


*Функция распределения:*

$ F_xi(x) = cases(
  0 "," x <= 0,
  e^(-lambda) "," 0 < x <= 1,
  e^(-lambda) + e^(-lambda) + lambda "," 1 < x <= 2,
  ...,
  limits(sum)_(k = 1)^n (e^(-lambda) lambda^k) / (k!)
) $

Функция распределения будет ступенчатой (кусочно-постоянной), однако будет иметь счетное количество ступенек.

#image("../imgs/ex_1.png")

=== Геометрическое распределение
*Эксперимент:* испытание Бернулли проводятся до появления первого "успеха".

Сл.в. $xi$ --- количество испытаний, проведенных до появления первого "успеха" (включительно.)

$xi in {1, 2, ...}$

*Закон распределения:*
$ P{xi = k} = p q^(k-1) $

=== Равномерное дискретное распределение

Пусть *эксперимент* имеет конечное множество равновозможных исходов, т.е. $Omega = {omega_1, omega_2, ..., omega_n}$, $forall 1 <= k <= n space P{omega_k} = 1 / n$

Сл.в. $xi$ --- номер наступившего исхода. Тогда $xi$ принимает значения из множества ${1, 2, ..., n}$ с вероятностями $ P{xi = k} = 1 / n $

*Ряд распределения:*

#align(center,
table(
  columns: 5,
[$xi$], [1], [2], [...], [n],
[p], [$1 / n$], [$1 / n$], [...], [$1 / n$])
)

*Функция распределения:*
_Сформулирована мной на основе примера из лекций, пожалуйста, проверьте, прежде чем писать это в билете._

$ F_xi (x) = cases(
  0", " x <= 1,
  1/n", " 1 < x <= 2,
  2 dot 1 / n", " 2 < x <= 3,
  ...,
  (n - 1) dot 1 / n", " n - 1 < x <= n,
  1", " x > n
) $

== Равномерное непрерывное распределение ( построение функций, ф.р., функция плотности, графики)

Пусть $xi$ принимает значения непрерывно на некотором промежутке $[a, b]$. Обозначим $xi ~ R[a, b]$

*Функция плотности:*

Учитывая условия эксперимента, делаем вывод, что ф. плотности должна иметь вид:
$ f(x) = cases(
  0 "," x in.not [a, b],
  c = "const" "," a in [a, b]
) $

Воспользуемся свойством $limits(integral)_(-infinity)^infinity f(x) d x = 1$ и найдем значение $c$:

$ limits(integral)_(-infinity)^infinity f(x) d x = limits(integral)_(-infinity)^a 0 d x + limits(integral)_a^b c d x + limits(integral)_b^(+infinity) = c x bar.v_a^b = c(b - a) = 1 $

$display(c = 1/(b - a))$, таким образом

$ f(x) = cases(
  0 "," x in.not [a, b],
  1 / (b-a) "," x in [a, b]
) $

#image("../imgs/ex_2.png")

*Функция распределения:*

По определению, $F(x) = limits(integral)_(-infinity)^x f(t) d t$. Функция $f(x)$ кусочно непрерывна, а интегрирование ведется на $(- infinity, x]$

Рассмотрим три случая:
+ Пусть $x <= a$. Тогда $ F(x) = limits(integral)_(-infinity)^x 0 d t = 0 $
+ Пусть $a < x <= b$. Тогда $ F(x) = limits(integral)_(-infinity)^x f(t) d t = limits(integral)_(-infinity)^a 0 d t + limits(integral)_a^x 1 / (b - a) d t = 0 + t / (b - a) bar.v_a^b = (x - a) / (b - a) $
+ Пусть $x > b$. Тогда $ F(x) = limits(integral)_(-infinity)^x f(t) d t = limits(integral)_(-infinity)^a 0 d t + limits(integral)_a^b 1 / (b - a) d t + limits(integral)_b^x 0 d t = (t - a) / (b - a) bar.v_a^b = (b - a) / (b - a) = 1 $

Таким образом:

$ F(x) = cases(
  0 "," x <= a,
  (x - a) / (b - a) "," a < x <= b,
  1 "," x > b
) $

#image("../imgs/ex_3.png")

== Показательное (экспоненциальное) распределение

Пусть рассматривается процесс, связанный со временем. Например, работа прибора; жизнь живого организма; время, прошедшее от момента появления одного события до другого.

$xi ~ "П"(lambda)$

*Функция распределения:*

Построим функцию распределения вероятности такой сл. величины. Здесь потребуется сделать предположение о том, что если "прибор" проработал безотказно до момента t, то в следующие $Delta t$ единиц времени он выйдет из строя с вероятностью $lambda Delta t + o(Delta t)$ (не выйдет с вероятностью $1 - (Delta t + o(Delta t))$). То есть вероятность выхода из строя на малом промежутке времени пропорциональна длине этого промежутка.

$P{xi >= t}$ --- вероятность того, что отказ произойдет после момента $t$ = вероятность безотказной работы на промежутке $(0, t]$

Поставим вопрос: какова вероятность безотказной работы на промежутке $(0, t + Delta t]$ = вероятность того, что отказ произойдет после $(t + Delta t)$, т.е. ${xi >= t + Delta t}$

Имеем:

$ P{xi >= t + Delta t} = P{underbrace((xi >= t), "проработал" \ "до момента t") inter underbrace((xi >= t + Delta t | xi >= t), "Проработал ещё" Delta t \ "времени после момента t")}= \ = P{xi >= t} dot P{xi >= t + Delta t | xi >= t} = P {xi >= t} dot (1 - lambda Delta t + o(Delta t))= \ = P{xi >= t} - P{xi >= t} dot lambda Delta t + P{xi >= t} dot o(Delta t) $

Обозначим $overline(F(t)) = 1 - F(t) = 1 - P{xi < t} = P{xi >= t}$, тогда

$ overline(F)(t + Delta t) = overline(F)(t) - overline(F)(t) dot lambda Delta t + overline(F)(t) o(Delta t) \ (overline(F)(t + Delta t) - overline(F)(t)) / (Delta t) = - overline(F)(t) (lambda Delta t) / (Delta t) + overline(F)(t) (o(Delta t)) / (Delta t)\ (d overline(F)(t)) / (d t) = - lambda overline(F)(t) $

Получим дифференциальное уравнение, решаем:

$ (d overline(F)(t)) / (overline(F)(t)) = -lambda d t \
integral (d overline(F)(t)) / (overline(F) (t)) = integral -lambda d t \ overline(F)(t) = e^(- lambda t + c) = c_1 dot e^(-lambda t) $

Итак, $ overline(F)(t) = e^(-lambda t) \
1 - F(t) = e^(-lambda t) => F(t) = 1 - e^(-lambda t); space t > 0 $

Таким образом функция распределения сл.в. $xi$ имеет вид:
$ F(t) = cases(
  0 "," space t <= 0,
  1 - e^(- lambda t) "," space t > 0
) $

#image("../imgs/ex_4.png")

*Функция плотности:*

$ f(x) = cases(
  0 "," space x <= 0,
  lambda e^(-lambda x) "," space x > 0
) $

#image("../imgs/ex_5.png")

*Свойство отсутствия последствий*

Смысл его состоит в том, что выход прибора из строя на промежутке $(t, s)$ не зависит от длины промежутка $(0, t)$, а только от длины промежутка $(t, s)$:

$ P{t <= xi < S | xi >= t} = P{t <= xi < s inter xi >= t} / P{xi >= t} = P{t <= xi < s} / (1 - P{xi < t})= \ = (F(s) - F(t)) / (1 - F(t)) = (1 - e^(-lambda s) - 1 + e^(- lambda t)) / (1 - 1 + e^(-lambda t)) = (- e^(-lambda s) + e^( - lambda t)) / e^(-lambda t)=  \ = 1 - e^(-lambda (s - t)) = F(s - t) = P{0 <= xi < s - t} $

#image("../imgs/ex_6.png")


== Нормальное распределение (Гаусса), (ф.р., функции плотности, графики, свойства)

$xi ~ N(a, sigma^2)$

Рассмотрим сл.в. $xi$ как ошибку при измерении некоторой неизвестной постоянной величины.

*Функция распределения:*
$ F(x) = 1 / (sqrt(2 pi) sigma) limits(integral)_(-infinity)^x e^((- (t - a)^2) / (2 sigma^2)) d t $

#image("../imgs/ex_7.png")

*Функция плотности:*

$ f(x) = 1 / (sqrt(2 pi) sigma) e^((- (x - a)^2) / (2 sigma^2)) $

#image("../imgs/ex_8.png")

В случае, если сл.в. $xi$ распределена с параметрами $N(0; 1)$, то говорят, что она распределена по _стандартному нормальному закону_

*Свойства:*
+ (связь между $xi ~ N(a; sigma^2) "и" xi_0 ~ N(0; 1)$)\
  Если $xi ~ N(a; sigma^2)$, то $(xi - a) / sigma = xi_0 ~ N(0; 1)$ \
  Если $xi_0 ~ N(0; 1)$, то $sigma xi_0 + a = xi ~ N(a; sigma^2)$ \ 
+ (Связь с функциями Лапласа)\ 
  _Дифференциальной функцией Лапласа называют функцию_ $ phi(x) = 1 / sqrt(2 pi) e^(- x^2 / 2) $\
  _Интегральной функцией Лапласа называют функцию_ $ Phi(x) = 1 / sqrt(2 pi) limits(integral)_0^x e^(- t^2 / 2) d t $\
  $ f_(xi_0)(x) = phi(x); space F_(xi_0)(x) = 0.5 + Phi(x) $
+ (Правило трёх сигм)\
  Пусть $xi ~ N(a; sigma^2)$. Найдём $P{abs(xi - a) < 3 sigma} = P{a - 3 sigma < xi < a + 3 sigma}$.\
  $ P{a - 3 sigma < xi < a + 3 sigma} = P{-3 < (xi - a) / sigma < 3} = P{-3 < xi_0 < 3} = \ = F_(xi_0)(3) - F_(xi_0)(-3) = 0.5 + Phi(3) - 0.5 - Phi(-3) = 0.49865 + 0.49865 = 0.9973 $

  Таким образом, правило 3-х сигм говорит о том, что у нормального распределения практически все значения лежат в промежутке $(a - 3 sigma; a + 3 sigma)$

== Случайные векторы. Ф.р. сл. вектора, её свойства. Дискретные и непрерывные сл.векторы.

*Случайным вектором* называется вектор $overline(xi) = (xi_1, xi_2, ..., xi_n)$, координатами которого являются случайные величины.

_В нашем курсе теории вероятностей рассматриваются двумерные случайные вектора_

*Функцией распределения* двумерной случайной величины называется функция:
$ F_(xi eta)(x, y) = P{omega: xi(omega) < x; eta(omega) < y} $
или иначе, $F(x, y) = P{xi < x; eta < y}$

*Свойства ф.р:*
+ $forall x, y in RR space 0 <= F(x, y) <= 1$
+ $F_(xi eta) (x, y)$ --- неубывающая по каждому из своих аргументов и непрерывная слева.
+ $ cases(
  limits(lim)_(x -> +infinity) F_(xi eta)(x, y) = F_eta (y),
  limits(lim)_(y -> + infinity) F_(xi eta) (x, y) = F_xi (x)) $\
  $ limits(lim)_(x -> + infinity \ y -> + infinity) F_(xi eta) (x, y) = 1 $ \
  $ limits(lim)_(x -> -infinity) F_(xi eta)(x, y) = limits(lim)_(y -> -infinity) F_(xi eta)(x, y) = limits(lim)_(x -> - infinity \ y -> - infinity) F_(xi eta) (x, y) = 0 $

Сл. вектор $(xi, eta)$ называется *дискретным*, если сл.в. $xi "и" eta$ дискретны.

_Речь идёт об абсолютно непрерывных сл. векторах_

Сл. вектор называется *абсолютно непрерывным*, если $forall x, y in RR$ ф.р. может быть представлена в виде 
$ F_(xi eta) (x, y) = limits(integral)_(-infinity)^x limits(integral)_(-infinity)^y f(u, v) d u d v $
где $f(x, y)$ --- функция плотности двумерного распределения вероятностей.

== Независимые сл.величины. Критерий независимости сл.величин.

Случайные величины $xi "и" eta$ называются *независимыми*, если
$ forall x, y in RR P{omega : xi(omega) < x; eta(omega < y)} = P{omega: xi(omega < x)} dot P{omega: eta(omega) < y} $

*Критерий независимости дискретных случайных величин*\
Дискретные сл.в. независимы $<=> forall i, j$ $ p_(i j) = p_i dot p_j \
P{xi = x_i; eta = y_j} = P{xi = x_i} dot P{eta = y_j} $

*Критерий независимости абсолютно непрерывных случайных величин*\
Абсолютно непрерывные случайные величины $xi "и" eta$ независимы $<=> forall x, y in RR f_(xi eta) (x, y) = f_xi (x) dot f_eta (y)$

Доказательство: _Необходимость:_ Пусть сл.в. $xi, eta$ независимы, т.е. $F_(xi eta) (x, y) = F_xi (x) dot F_eta (y)$. Тогда

$ underbrace((diff^2 F_(xi eta) (x, y)) / (diff x diff y), f_(xi eta) (x, y)) = (diff^2) / (diff x diff y) F_xi (x) dot F_eta (y) = underbrace( (diff F_xi (x)) / (diff x), f_xi (x)) dot underbrace( (diff F_eta (y)) / (diff y), f_eta (y)) $

Таким образом $f_(xi eta) (x, y) = f_xi (x) dot f_eta (y)$

_Достаточность:_ Пусть верно, что $f_(xi eta) (x, y) = f_xi (x) dot f_eta (y)$, тогда

$ F_(xi eta) (x, y) = limits(integral)_(-infinity)^x limits(integral)_(-infinity)^y f(u, v) d u d v = limits(integral)_(-infinity)^x limits(integral)_(-infinity)^y f_xi (u) f_eta (v) d u d v = \ = limits(integral)_(-infinity)^x f_xi (u) d u limits(integral)_(-infinity)^y f_eta (v) d v = F_xi (x) F_eta (y) $

== Числовые характеристики сл.в: Математическое ожидание и его свойства.

_Рассматривается пример построения мат.ожидания:_\
Пусть имеется дискретная случайная величина $xi$ со значениями $x_1, x_2, ..., x_k; space P{xi = x_k} = p_k$

Пусть проведено "очень большое" $N >> k$ количество наблюдений за сл.в. $xi$ и получены результаты: $a_1, a_2, ..., a_N$, среди которых $i_1$ раз встречается значение $x_1$, $i_2$ раз встречается значение $x_2$ и т.д.

Найдём среднее арифметическое значение наблюдавшихся значений:

$ (a_1 + a_2 + ... + a_N) / N = (x_1 dot i_1 + x_2 dot i_2 + ... + x_k dot i_k) / N = limits(sum)_(j = 1)^k x_j i_j / N $

Рассмотрим, что происходит с полученным значением при $N -> infinity$. $x_j$ не меняется, т.к. это значение случайной величины. $display(i_j / N limits(->)_(N -> infinity) P{xi = x_i})$, т.е. частоты наблюдения значения $x_j$ стремятся к вероятности этого значения. Получаем:
$ limits(sum)_(j = 1)^k x_j i_j / N limits(->)_(N -> infinity) limits(sum)_(j = 1)^k x_j p_j = cal(M) xi $

Число $cal(M) xi$ называют *математическим ожиданием*. Оно не является случайным и может быть вычислено #underline[до] начала наблюдений за сл.в. $xi$.

*Определение мат. ожидания.* Математическим ожиданием сл.в. $xi$ называется величина $ cal(M) xi = limits(integral)_Omega xi(omega) d P(omega) $
Если вероятностная мера $P(omega)$ может быть определена через функцию распределения, то 
$ cal(M) xi = limits(integral)_(-infinity)^infinity x d F(x) $

#align(center, grid(
  columns: 2,
  column-gutter: 10pt,
  align: center,
  
  [*Для дикретной сл.в.* \
  $ cal(M) xi = limits(sum)_(k = 1)^infinity x_k p_k $\
  $d F(x)$ задается \ числами $p_k = P{xi = x_k}$], 
  [*Для абсолютно непрерывной сл.в.*\
  $ cal(M) xi = limits(integral)_(-infinity)^infinity x f(x) d x $\
  здесь $d F(x) = f(x) d x$ ]))

*Свойства мат.ожидания:*

+ $cal(M) C = C; space C - "const"$
+ $cal(M) C xi = C cal(M) xi$
+ $cal(M) (xi plus.minus eta) = cal(M) xi plus.minus cal(M) eta$
+ Если сл.в. $xi$ и $eta$ независимы, то $ cal(M) xi eta = cal(M) xi cal(M) eta, "где" \
  cal(M) xi eta = limits(sum)_(i = 1)^infinity limits(sum)_(j = 1)^infinity x_i y_j p_(i j) "для дискретных сл.в."\
  cal(M) xi eta = limits(integral)_(-infinity)^infinity limits(integral)_(-infinity)^infinity x y f(x, y) d x d y "для абс. непр. сл. в." $
+ Если $xi >= 0$, то $cal(M) xi >= 0$
+ *(Обобщённое неравенство Чебышёва)*\
  Пусть $xi$ --- неотрицательная случайная величина, а $g(x)$ --- неубывающая на множестве значений случайной величины $xi$ функция. Тогда $ forall epsilon > 0 space P{xi >= epsilon} <= (cal(M) g(xi)) / g(epsilon) $

== Обобщенное неравенство Чебышёва. Следствие (неравенство Чебышёва)

*Обобщённое неравенство Чебышёва:*\
  Пусть $xi$ --- неотрицательная случайная величина, а $g(x)$ --- неубывающая на множестве значений случайной величины $xi$ функция. Тогда $ forall epsilon > 0 space P{xi >= epsilon} <= (cal(M) g(xi)) / g(epsilon) $

Доказательство:

$ cal(M) g(xi) = limits(integral)_(-infinity)^infinity g(x) d F(x) >= limits(integral)_epsilon^infinity g(x) d F(x) underbrace(>=, g(x) space - "неубывающая") limits(integral)_epsilon^infinity g(epsilon) d F(x)= \ = underbrace(g(epsilon), "const") limits(integral)_epsilon^infinity d F(x) = g(epsilon) (F(x) bar.v_epsilon^(+infinity)) = g(epsilon) (limits(lim)_(x -> infinity) F(x) - F(epsilon)) = \ = g(epsilon) (1 - P{xi < epsilon}) = g(epsilon) P{xi >= epsilon} $

В итоге:
$ cal(M) g(epsilon) >= g(epsilon) P{xi >= epsilon} \
P{xi >= epsilon} <= (cal(M) g(xi)) / g(epsilon) $

*(Следствие) неравенство Чебышёва:*\
Пусть $xi$ --- сл.в. с м. о. $cal(M) xi < +infinity$. Тогда
$ forall epsilon P{abs(xi - cal(M) xi) < epsilon} >= 1 - (cal(D) xi) / epsilon^2 $
или
$ P{abs(xi - cal(M) xi) >= epsilon} <= (cal(D) xi) / epsilon^2 $
где $cal(D) xi = cal(M)(xi - cal(M) xi)^2$

== Вычисление математического ожидания для распределений Бернулли, биномиального распределения, распределения Пуассона, равномерного непрерывного, показательного, нормального законов распределения. (14 вопрос)
=== Матожидание для распределений Бернулли
Математическое ожидание сл. в. $epsilon$ равно

$ M epsilon = 0 dot q + 1 dot p = p $

Математическое ожидание сл. в. $epsilon^2$ равно

$ M epsilon^2 = 0 dot q + 1 dot p = p $

=== Матожидание для биномиального распределения

Математическое ожидание сл. в. $xi$ равно

$
M xi = M (epsilon_1 + epsilon_2 + dots + epsilon_n) = M (epsilon_1) + M (epsilon_2) + dots + M (epsilon_n) = p + p + dots + p = n p
$

=== Матожидание для распределения Пуассона

Математическое ожидание сл. в. $xi$ равно

$
M xi = limits(sum)_(k = 0)^infinity k^2 (lambda e^(- lambda))/(k!) = lambda e^(- lambda) limits(sum)_(k = 0)^infinity k (lambda^(k - 1))/((k - 1)!) = lambda e^(- lambda) e^(lambda) = lambda
$
Математическое ожидание сл. в. $xi^2$ равно

$
M xi^2 = limits(sum)_(k = 0)^infinity k^2 (lambda e^(- lambda))/(k!) = lambda e^(- lambda) limits(sum)_(k = 0)^infinity k (lambda^(k - 1))/((k - 1)!) = lambda e^(- lambda) limits(sum)_(m = 0)^infinity (m + 1) (lambda^m)/(m!) = dots = lambda^2 + lambda.
$

=== Матожидание для равномерного непрерывного распределения

Математическое ожидание сл. в. $xi$ равно

$
M xi = limits(integral)_(a)^b x dot (1)/(b - a) d x = (b^2 - a^2)/(2 (b - a)) = (b + a)/2
$

Математическое ожидание сл. в. $xi^2$ равно

$
M xi^2 = limits(integral)_(a)^b x^2 dot (1)/(b - a) d x = (b^3 - a^3)/(3 (b - a)) = (b^2 + a b + a^2)/3
$

=== Матожидание для показательного закона распределения

Математическое ожидание сл. в. $xi$ равно (используем интегрирование по частям)
$
M xi = limits(integral)_(0)^infinity x dot lambda e^(- lambda x) d x = - x e^(- lambda x) |^infinity_(0) + limits(integral)_(0)^infinity lambda e^(- lambda x) d x =\
= - (limits(lim)_(x -> +infinity) x e^(- lambda x) - e^0) + (- 1)/(lambda) (limits(lim)_(x -> +infinity) x e^(- lambda x) - e^0) = 1/lambda
$

Математическое ожидание сл. в. $xi^2$ равно

$
M xi^2 = limits(integral)_(0)^infinity x^2 dot lambda e^(- lambda x) d x = - x^2 e^(- lambda x) |^infinity_(0) + 2 limits(integral)_(0)^infinity x dot lambda e^(- lambda x) d x =\
= 0 + 2 dot 1/(lambda^2) = 2/(lambda^2)
$

=== Матожидание для нормального закона распределения
Найдем характеристики стандартной нормальной случайной величины $xi_0 ~ N(0,1)$, а затем воспользуемся свойствами математического ожидания и дисперсии.

Математическое ожидание сл. в. $xi_0$ равно

$
M xi_0 = limits(integral)_(-infinity)^infinity x dot e^(- (x^2)/2) d x = limits(integral)_(-infinity)^0 x dot e^(- (x^2)/2) d x + limits(integral)_(0)^infinity x dot e^(- (x^2)/2) d x (=)
$

Введем замену переменной $t = x^2/2$, тогда $d t = x d x$

$
(=) - limits(integral)_(-infinity)^0 e^(- t) d t + limits(integral)_(0)^infinity e^(- t) d t = 0 
$

Математическое ожидание сл. в. $xi_0^2$ равно

$
M xi_0^2 = limits(integral)_(-infinity)^infinity x^2 dot e^(- (x^2)/2) d x (=)
$

Интегрирование по частям: $u = x$, $d u = d x$ $d v = x e^(- (x^2/2)) d x$

$
v = integral x dot e^(- (x^2)/2) d x = integral e^(- (x^2)/2) d(x^2/2) = - e^(- (x^2)/2)
$

$
(=) 1/(sqrt(2 pi)) (x dot e^(- (x^2)/2) |^infinity_(-infinity)) + 1/(sqrt(2 pi)) limits(integral)_(-infinity)^infinity e^(- (x^2)/2) d x = 0 + 1/(sqrt(2 pi)) sqrt(2 pi) = 1
$

Здесь использовался интеграл Пуассона, $limits(integral)_(-infinity)^infinity e^(- (x^2)/2) d x = sqrt(2 pi)$.

== Числовые характеристики сл.величин: Начальные, центральные и смешанные  моменты. Дисперсия и ее свойства. Ковариация и её свойства. Коэффициент корреляции и его свойства. (15 вопрос)
=== Моменты распределений.
1. *Начальный момент* $k$-ого порядка --- это величина:
	$
	m_k = M xi^k;
	$ 
	если $M |xi|^k lt + infinity$

	Вероятности: $m_1 = M xi; m_2 = M xi^2$
2. *Центральным моментом* $k$-ого порядка

	$
		mu_k = M (xi - M xi)^k ; M|xi| lt + infinity
	$

	В частности

	$ mu_1 = M(xi - M xi) = M xi - M(M xi) = M xi - M xi = 0 $
	$ mu_2 = M(xi - M xi)^2 = D xi $
3. *Смешанные моменты* $k$-ого порядка

	$
	alpha_(i j) = M(xi - M xi)^i (eta - M eta)^j; i + j = k
	$

	$
	M|xi| lt + infinity\
	M|eta| lt + infinity\
	k = 1\
	alpha_(1 0) = M(xi - M xi) = mu_1 = 0\
	alpha_(0 1) = M(eta - M eta) = mu_1 = 0\
	alpha_(2 0) = M(xi - M xi)^2 = mu_2 = D xi\
	alpha_(0 2) = M(eta - M eta)^2 = mu_2 = D eta\
	alpha_(1 1) = M(xi - M xi)(eta - M eta) = c o v(xi; eta)
	$

=== Дисперсия и ее свойства
/ Дисперсия:: Дисперсией случайной величины $xi$ назовем
$
D xi = M (xi - M xi)^2
$

*Свойства:*
1. $D xi gt.eq 0; space forall xi space$ с $space M xi lt + infinity$
2. $D C = 0; c - c o n s t $\
3. $D C xi = C^2 D xi; C - c o n s t$

	$D C xi = M (C xi - M C xi)^2 = M (C(xi - M xi))^2 = \
	= M C^2 (xi - M xi)^2) = C^2 M (xi - M xi)^2 = C^2 D xi$
4. Если $xi, eta$ --- независимы, то $D(xi plus.minus eta) = D xi + D eta$
5. Если $xi, eta$ такие, что $M xi lt + infinity$, $M eta lt + infinity$, то $D (xi plus.minus eta) = D xi + D eta plus.minus 2 c o v(xi, eta)$\
	где $c o v(xi, eta) = M (xi - M xi)(eta - M eta)$ --- ковариация случайных величин
6. $D xi = M xi^2 - (M xi)^2$ (*НА ИПСИЛОНЕ ЕГО НЕТ, НО ДЛЯ ОБЩЕГО РАЗВИТИЯ ПУСТЬ БУДЕТ*)

$ D xi = M (xi - M xi)^2 = M(xi^2 - 2 xi M xi + (M xi)^2) = M xi^2 - 2 M xi M xi + (M xi)^2) = M xi^2 - (M xi)^2 $


=== Ковариация сл. в. и ее свойства
/ Ковариация сл. в. $xi$ и $eta$: --- характеристика совместного разброса сл. в. $xi$ и $eta$ относительно своих средних значений.

*Свойства:*
1. $c o v(xi, eta) = c o v(eta, xi)$ --- симметрична
2. $c o v(xi, xi) = D xi$; $space c o v(eta, eta) = D eta$
3. $c o v(xi, eta) = 0$, если $xi$ и $eta$ независимы
4. $c o v(xi, eta) = M xi eta - M xi M eta$

Покажем 4.

$
c o v(xi, eta) = M(xi - M xi) (eta - M eta) = M(xi eta - eta M xi - xi M eta + M xi + M eta)=\
= M xi eta - M (eta M xi) - M(xi M eta) + M (M xi M eta) =\
= M xi eta - M xi M eta - M eta M xi + M xi M eta = M xi eta - M xi M eta
$

=== Коэффициент корреляции и его свойства
/ Коэффициент корреляции: --- величина:
$
r = r (xi, eta) = (c o v(xi, eta))/(sqrt(D xi) sqrt(D eta))
$

Так же можно записать:

$
r = (c o v(xi, eta))/(sqrt(D xi) sqrt(D eta)) = (M xi eta - M xi M eta)/(sqrt(D xi) sqrt(D eta))
$

*Свойства:*
1. $|r| lt 1$
	
	*Доказательство:*
	$
		|r| = (|c o v(xi, eta)|)/(sqrt(D xi) sqrt(D eta)) = (|M xi eta - M xi M eta|)/(sqrt(D xi) sqrt(D eta)) lt.eq\
		lt.eq (sqrt(M(xi - M xi)^2) sqrt(M(eta - M eta)^2))/(sqrt(D xi) sqrt(D eta)) = (sqrt(D xi) sqrt(D eta))/(sqrt(D xi) sqrt(D eta)) = 1
	$
2. Если $xi$ и $eta$ независимы, то $r = 0$

	Следует из того, что у независимых сл. в. $c o v(xi, eta) = 0$. Обратное неверно!!!
3. Если $xi$ и $eta$ линейно связаны $(eta = a xi + b)$, то $|r| = 1$ и наооборот $|r| = 1$ означает, что между $xi$ и $eta$ существует линейная связь.
