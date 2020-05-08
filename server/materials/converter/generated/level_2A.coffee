import label from "../../lib/label"
import level from "../../lib/level"
import link from "../../lib/link"
import page from "../../lib/page"
import problem from "../../lib/problem"
import topic from "../../lib/topic"

topic_module_16005_0 = () ->
    return topic("*Функции (без контеста)", null, [
        label("<p>Теории тут нет, прочитайте в книжке или прослушайте на занятии.</p>"),
    ])

module24341 = () ->
    page("Питон: работа с файлами", """
        <div class="box generalbox generalboxcontent boxaligncenter clearfix"><h1>Питон: работа с файлами</h1>
        <p>На серьезных олимпиадах, а также во многих других ситуациях вам надо читать данные не с клавиатуры, а из файла, и выводить данные в файл, а не на "экран". В таком случае вы должны знать имена этих файлов; в задачах они, как правило, указаны, на этом сайте имена файлов почти всегда — <code>input.txt</code> для входных данных и <code>output.txt</code> для выходных.</p>
        
        <p>Во многих языках программирования ввод/вывод данных через файлы очень похож на ввод/вывод с клавиатуры — те же команды, только немного другие параметры. В питоне, к сожалению, это не так.</p>
        
        <h2>Ввод данных</h2>
        <p>Самый простой способ ввести данные из файла в питоне — это сразу считать их в массив строк. Это делается так:</p>
        <pre>data = open("input.txt", "r").readlines()
        </pre>
        
        <p>Здесь <code>input.txt</code> — файл, откуда надо считать данные, параметр <code>"r"</code> указывает, что вы собираетесь именно <i>читать</i> (<b>r</b>ead) данные, а не записывать (<b>w</b>rite, см. ниже). Команда <code>open</code>, как говорят, «открывает файл на чтение», а команда <code>readlines</code> считывает весь файл в массив строк.</p>
        
        <p>Теперь <code>data</code> — это массив строк, каждый элемент которого — это очередная строка из входного файла. Например, если в файле было написано</p>
        <pre>1 2 3
        4 5 6
        some text
        </pre>
        <p>то <code>data</code> будет содержать массив <code>["1 2 3\n", "4 5 6\n", "some text\n"]</code>. (Здесь <code>"\n"</code> — это символ перевода строки, он будет на конце каждой строки массива <code>data</code>, кроме, возможно, последней. Если вы считываете числа, то можете о нем не беспокоиться, а если считываете строки и он вам мешает, то, как правило, от него можно избавиться командой <code>a = a.rstrip("\n")</code>, где <code>a</code> — строка, у которого вы хотите его убрать.)</p>
        
        <p>Каждый элемент массива <code>data</code> — это как результат отдельной команды <code>input()</code>, которой вы пользовались для чтения с клавиатуры. Поэтому дальше вы пишете программу так же, как писали и раньше, но вместо каждого очередного обращения к <code>input()</code> вы обращаетесь к очередному элементу массива <code>data</code>. В простых случаях все просто, в более сложных вам надо аккуратно подсчитывать, к какому именно элементу массива вам надо обратиться.</p>
        
        <p>Пример. Пусть во входном файле два числа по одному на строке. Их считываем так (здесь и далее слева — пример чтения с клавиатуры, справа — из файла):</p>
        <table border="1" cellpadding="5"><tbody><tr><td>
        <pre>a = int(input())
        b = int(input())
        </pre>
        </td><td>
        <pre>data = open("input.txt", "r").readlines()
        a = int(data[0])
        b = int(data[1])
        </pre>
        </td></tr></tbody></table>
        <p>Если же два числа в одной строке:</p>
        <table border="1" cellpadding="5"><tbody><tr><td>
        <pre>a, b = map(int, input().split())
        </pre>
        </td><td>
        <pre>data = open("input.txt", "r").readlines()
        a, b = map(int, data[0].split())
        </pre>
        </td></tr></tbody></table>
        <p>Более сложный пример: сначала число <code>N</code>, а потом <code>N</code> строк по одному числу в каждой:</p>
        <table border="1" cellpadding="5"><tbody><tr><td>
        <pre>n = int(input())
        for i in range(n):
            x = int(input())
            #... что-то делаем с x
        </pre>
        </td><td>
        <pre>data = open("input.txt", "r").readlines()
        n = int(data[0])
        for i in range(n):
            x = int(data[i + 1])
            #... что-то делаем с x
        </pre>
        </td></tr></tbody></table>
        <p>Обратите внимание на то, что здесь написано <code>i + 1</code> — потому что в первой (нулевой) строке было <code>n</code>.
        
        </p><h2>Вывод</h2>
        <p>Проще всего выводить данные — записав их в одну большую строку и выведя эту строку. Вывод строки в файл делается так:</p>
        <pre>open("output.txt", "w").write(s)
        </pre>
        <p>здесь <code>s</code> — строка, которую нужно вывести. Это должна быть именно строка, а не число и т.д. Используйте функцию <code>str</code>, чтобы превратить что угодно в строку, вручную добавляйте пробелы и переводы строк (перевод строки записывается так: <code>"\n"</code>).</p>
        <p>Пример: пусть надо вывести два числа в одну строку:</p>
        <code>
        open("output.txt", "w").write(str(a) + " " + str(b))
        </code>
        <p>Пусть надо вывести два числа на отдельных строках:</p>
        <code>
        open("output.txt", "w").write(str(a) + "\n" + str(b))
        </code>
        <p>Пусть надо вывести массив чисел по одному числу на строке:</p>
        <pre>s = ""
        for x in a:
            s = s + str(x) + "\n"
        open("output.txt", "w").write(s)
        </pre>
        <p>или проще, используя строковую магию:</p>
        <pre>open("output.txt", "w").write("\n".join(a))
        </pre>
        <p>Имейте в виду, что такой вызов должен быть только один раз. Если вы хотите вызывать функцию write несколько раз, то надо суметь вызвать функцию open только один раз. Рекомендуемый вариант — такой:</p>
        <pre>with open("output.txt", "w") as f:
            f.write("1")
            f.write("2")
        </pre>
        </div>
    """, {skipTree: true})

topic_module_24341 = () ->
    return topic("*Работа с файлами (без контеста)", null, [
        module24341(),
    ])

module25200 = () ->
    page("Про задачи \"на технику\"", """
        <div class="box generalbox generalboxcontent boxaligncenter clearfix"><h2>Задачи "на технику"</h2>
        <p>Бывают задачи, в которых вроде все понятно что делать, кажется, не надо придумывать алгоритм, нет проблем со временем работы — но тем не менее задача кажется сложной, и непонятно, с какого конца к ней подступиться (это, конечно, не строгое определение). Такие задачи принято называть задачами "на технику", часто это какие-нибудь задачи на обработку текста и т.п.</p>
        
        <p>Сложно придумать какие-нибудь универсальные рекомендации к таким задачам, но есть пара полезных соображений.</p>
        
        <p>Во-первых, такие задачи обычно имеют очень много способов их решать, но какие-то более простые в написании, а какие-то более сложные. Поэтому прежде чем бросаться писать код, надо подумать, попробовать придумать несколько разных подходов и выбрать тот, который будет проще и надежнее в реализации.</p>
        
        <p>Во-вторых, даже если сама задача выглядит сложной, зачастую ее решение можно разбить на несколько этапов, каждый из которых относительно простой. Тогда не надо пытаться написать решение одним большим циклом, который будет делать сразу все, что надо. Напишите решение, которое будет состоять из нескольких частей, каждая из которых будет по отдельности делать небольшую часть работы.</p>
        
        <p>Например, пусть вам надо обработать текст, в котором надо как-то особенно обрабатывать слова и предложения. Тогда напишите сначала код, который будет только разбивать входной текст на предложения; в результате у вас получится массив предложений. Потом напишите код, который будет брать одно предложение и разбивать его на слова. В результате у вас получится двумерный массив слов: каждая строка массива — это слова одного предложения. И уже потом пишите то, что надо по условию задачи.</p>
        
        <p>Или, еще лучше — напишите функцию, которая будет принимать на вход одно предложение и будет его как надо обрабатывать. И тогда в основном коде вам не нужен будет двумерный массив, вы просто будете разбивать текст на предложения и по одному скармливать их этой функции, а в результате внутри функции вы имеете дело только с одним предложением. Если вам надо как-то особо обрабатывать слова, то напишите еще одну функцию, которая обрабатывает одно слово, и вызывайте ее из функции, обрабатывающей предложение.</p>
        
        <p>Чуть более подробный пример (я уже где-то про это писал) — пусть вам дан текст, надо нормализовать заглавные буквы (после точек сделать заглавные буквы, а в остальных местах — маленькие), убрать двойные пробелы, добавить пробелы после знаков препинания, и вывести, перенося слова так, чтобы каждая строка была не длиннее 80 символов — то не надо тоже бросаться все делать сразу. Напишите программу, которая сначала нормализует заглавные буквы. Потом уберет двойные пробелы. Потом добавит пробелы где надо (может быть, это будет удобно совместить с предыдущим или со следующим пунктом, тут можно по-разному организовать код, это уже зависит от конкретных деталей задачи). Потом разобьет текст на слова. Потом уже выведет текст разбитым на строки так, как надо.</p>
        
        <p>Еще пример — пусть вам надо вычислить значение многочлена, т.е. дана строка вида <code>2*x^2+3*x+5</code>, и значение <code>x</code>, надо вычислить значение многочлена. Это не так сложно, как кажется, надо просто сначала разбить строку-многочлен на слагаемые, потом в каждом слагаемом отдельно выделить коэффициент и степень, и дальше уже все просто считается.</p>
        
        <p>Вообще, общий принцип такой: старайтесь писать код так, чтобы <b>в каждом месте программы вам надо было держать в голове как можно меньше информации</b>. И в плане тех данных и переменных, которые вы используете, и в плане тех требований, которые вам надо выполнять. Если вы понимаете, что одна переменная вам нужна в одном месте кода, а другая — в другом — то подумайте, нельзя ли разнести код так, чтобы в первом месте вам не надо было думать про вторую переменную, и т.п.</p>
        
        <hr>
        
        <p>Мелкий комментарий на эту же тему, хотя и не относящийся явно к задачам на технику. Пусть, например, вам в программе надо считать суммы элементов в строках двумерного массива:
        </p><table border="1" cellpadding="5">
        <tbody><tr><td>Паскаль</td><td>Питон</td></tr>
        <tr><td><pre>var a:array[1..100,1..100] of integer;
            s:integer;
        ...
        for i:=1 to n do begin
            s:=0;
            for j:=1 to m do
                s:=s+a[i,j];
            ... что-то делаем с s
            ... делаем что-то еще
        end;
        ...
        </pre></td>
        <td><pre># a -- двумерный массив
        for i in range(n):
            s = 0
            for j in range(m):
                s += a[i][j]
            ... что-то делаем с s
            ... делаем что-то еще
        ...
        </pre>
        </td></tr></tbody></table>
        <p>Можно писать так, как написано выше. А можно так — и многие из вас именно так и пишут:
        </p><table border="1" cellpadding="5">
        <tbody><tr><td>Паскаль</td><td>Питон</td></tr>
        <tr><td><pre>var a:array[1..100,1..100] of integer;
            s:integer;
        ...
        s:=0;
        for i:=1 to n do begin
            for j:=1 to m do
                s:=s+a[i,j];
            ... что-то делаем с s
            ... делаем что-то еще
            s:=0;
        end;
        ...
        </pre></td>
        <td><pre># a -- двумерный массив
        s = 0
        for i in range(n):
            for j in range(m):
                s += a[i][j]
            ... что-то делаем с s
            ... делаем что-то еще
            s = 0
        ...
        </pre>
        </td></tr></tbody></table>
        <p>Отличие в том, что в первом коде вы зануляете переменную <code>s</code> <i>перед</i> использованием, а во втором коде — после.</p>
        
        <p>Так вот, настоятельно вам рекомендую писать именно так, как в первом варианте. Потому что во втором варианте вам надо помнить, что <code>s</code> должно быть равно нулю в конце итерации цикла, а в первом варианте — нет. В первом варианте вас вообще не волнует, чему равна <code>s</code> на входе в цикл, и чему она равна в конце цикла. В первом варианте, можно сказать, вся жизнь переменной <code>s</code> ограничена тремя строками кода, вам не надо помнить и думать про нее за пределами этих трех строк. Поэтому в первом варианте вам надо меньше думать и меньше помнить, поэтому он проще и надежнее.</p>
        
        <p>Элементарный пример, как может что-то пойти не так во втором варианте — пусть вы где-то внутри цикла по <code>i</code> решили написать <code>continue</code>. И все, у вас пропустилось присваивание <code>s=0</code>.</p></div>
    """, {skipTree: true})

topic_25199 = () ->
    return topic("Задачи \"на технику\"", "2А: Задачи \"на технику\"", [
        module25200(),
        problem(848),
        problem(426),
        problem(1629),
    ])

module25629 = () ->
    page("Разбор задачи \"Смайлики\", читать только тем, кто решил", """
        <div class="box generalbox generalboxcontent boxaligncenter clearfix"><p style="margin-bottom: 100px">Разбор задачи "Смайлики", читать только тем, кто решил!</p>
        
        <p>Во-первых, в этой задаче надо правильно понять условие, например, понять, что на тест <code>;:-()[]</code> ответ 1, т.к. эта строка содержит один смайлик — <code>:-(</code>. Т.е. не страшно, если вокруг смайлика есть лишние символы, важно, что сам смайлик можно выделить.</p>
        
        <p>Дальше эту задачу можно решать по-разному. Можно, конечно, идти по строке, искать двоеточие или точку с запятой, после нее искать минусы, после нее — одинаковые скобки. Это можно написать, но это не очень просто (хотя и не суперсложно).</p>
        
        <p>Можно немного упростить решение, поняв, что не надо искать <i>много</i> одинаковых скобок, хватит и одной, т.к. если есть смайлик с кучей скобок, то если убрать все скобки, кроме последней, то он тоже останется смайликом.</p>
        
        <p>Но можно и еще более упростить решение, сделав одно простое наблюдение. <b>Если выкинуть из входного файла все минусы, то ответ не изменится!</b> Действительно, смайлик без минусов — это тоже смайлик, и наоборот, если в смайлик без минусов вставить минусы, то получится все равно смайлик. Поэтому от выкидывания минусов не появится новых смайликов, а старые не пропадут.</p>
        
        <p>Поэтому очень простое решение этой задачи — выкинем все минусы, а после этого посчитаем, сколько в строке встречается пар соседних символов таких, что первый из них — это : или ;, а второй — скобка.</p>
        </div>
    """, {skipTree: true})

topic_16017 = () ->
    return topic("*Рекурсивный перебор", "2А: *Задачи на рекурсивный перебор", [
        label("Эта тема является довольно сложной, поэтому, если вы в ней не разберетесь, то можете пропустить, и вернуться к ней на уровне 5А. Тем не менее, рекурсивный перебор является очень полезной техникой, поэтому постарайтесь ее освоить уже сейчас."),
        label("<a href=\"http://notes.algoprog.ru/backtrack/index.html\">Теория по рекурсивному перебору</a><br>\nСм. также <a href=\"http://sis.khashaev.ru/2013/august/c-prime/\">видеозаписи лекций ЛКШ параллели C'</a>, раздел «Рекурсивный перебор»"),
        link("https://informatics.msk.ru/mod/resource/view.php?id=16016", "Красивая картинка рекурсивного дерева"),
        problem(80),
        problem(84),
        problem(85),
        problem(89),
        problem(90),
        problem(91),
        problem(485),
        problem(1182),
    ])

topic_16009 = () ->
    return topic("НОД, алгоритм Евклида", "2А: Задачи на НОД", [
        label("<a href=\"http://sis.khashaev.ru/2013/august/c-prime/2MBSsJ0TEMg/\">Видеозаписи лекций ЛКШ параллели C' про НОД и алгоритм Евклида</a>"),
        problem(199),
        problem(27),
        problem(1838),
    ])

topic_16020 = () ->
    return topic("Квадратичные сортировки", "2А: Задачи на квадратичные сортировки", [
        label("Видеозаписи лекций ЛКШ по сортировкам: <a href=\"http://sis.khashaev.ru/2013/august/c-prime/kBHwr_e_aAg/\">сортировка пузырьком</a>, <a href=\"http://sis.khashaev.ru/2013/august/c-prime/gZGwKXwjffg/\">выбором максимума</a>. К сожалению, теории по сортировкой вставками тут пока нет. Найдите в интернете или прослушайте на занятии."),
        label("Внимание! В задаче \"Библиотечный метод\" надо выводить очередную строку только если состояние массива при этой вставке изменилось."),
        problem(230),
        problem(1436),
        problem(1411),
        problem(1099),
        problem(39),
    ])

export default level_2A = () ->
    return level("2А", [
        label("<p>Чтобы перейти на следующий уровень, необходимо решить все задачи, кроме раздела \"Рекурсивный перебор\"</p>"),
        topic_module_24341(),
        topic_module_16005_0(),
        topic_16009(),
        topic_16017(),
        topic_16020(),
        topic_25199(),
        module25629(),
    ])