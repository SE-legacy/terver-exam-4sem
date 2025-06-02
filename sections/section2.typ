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
(=) - limits(integral)_(0)^infinity e^(- t) d t + limits(integral)_(0)^infinity e^(- t) d t = 0 
$// TODO: что-то мне подсказывает, что первый интеграл должен быть от -infinity до 0, второй от 0 до infinity, но там оба от 0 до infinity. Надо проверить

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

