# ИДЗ 3
Хан Виктория БПИ226
Вариант 5
## Условие
Разработать программу, заменяющую все строчные гласные буквы
в заданной ASCII–строке заглавными.

Разработанная программа должна читать обрабатываемый
текст из файла и загружать полученные результаты также в
файл. Ввод имен входного и выходного файлов должен осуществляться с использованием консоли. Аналогичным образом
осуществляет ввод остальных параметров, необходимых для выполнения программы.

* Комментарии в коде программы 
* Реализованы подпрограммы ввода и вывода, а также конвертации текста
* Реализованы макросы с подпрограммами
* Разделение на единицы компиляции
* Отдельная доп тестовая программа, которая сразу идет после основной
* Реализован выборочный вывод в консоль

[Основная программа](https://github.com/Notocactus/IHW3/blob/main/IHW3_main.s)
[Библиотека макросов](https://github.com/Notocactus/IHW3/blob/main/macro-syscalls.m)
[Подпрограммы](https://github.com/Notocactus/IHW3/blob/main/subprograms.asm)

*little_input.txt:* 
A tiny little test program :)

*output:* 
A tIny lIttlE tEst prOgrAm :)


*big_input.txt:* 
The bridge
Ten days after the war ended, my sister Laura drove a car off a bridge. The
bridge was being repaired: she went right through the Danger sign. The car
fell a hundred feet into the ravine, smashing through the treetops feathery
with new leaves, then burst into flames and rolled down into the shallow
creek at the bottom. Chunks of the bridge fell on top of it. Nothing much was
left of her but charred smithereens.
I was informed of the accident by a policeman: the car was mine, and
they’d traced the licence. His tone was respectful: no doubt he recognized
Richard’s name. He said the tires may have caught on a streetcar track or the
brakes may have failed, but he also felt bound to inform me that two
witnesses – a retired lawyer and a bank teller, dependable people – had
claimed to have seen the whole thing. They’d said Laura had turned the car
sharply and deliberately, and had plunged off the bridge with no more fuss
than stepping off a curb. They’d noticed her hands on the wheel because of
the white gloves she’d been wearing.
It wasn’t the brakes, I thought. She had her reasons. Not that they were ever
the same as anybody else’s reasons. She was completely ruthless in that way.
“I suppose you want someone to identify her,” I said. “I’ll come down as
soon as I can.” I could hear the calmness of my own voice, as if from a
distance. In reality I could barely get the words out; my mouth was numb, my
entire face was rigid with pain. I felt as if I’d been to the dentist. I was furious
with Laura for what she’d done, but also with the policeman for implying that
she’d done it. A hot wind was blowing around my head, the strands of my hair
lifting and swirling in it, like ink spilled in water.
“I’m afraid there will be an inquest, Mrs. Griffen,” he said.
“Naturally,” I said. “But it was an accident. My sister was never a good
driver.”
I could picture the smooth oval of Laura’s face, her neatly pinned chignon,
the dress she would have been wearing: a shirtwaist with a small rounded
collar, in a sober colour – navy blue or steel grey or hospital-corridor green.
Penitential colours – less like something she’d chosen to put on than like
something she’d been locked up in. Her solemn half-smile; the amazed lift of
her eyebrows, as if she were admiring the view.
The white gloves: a Pontius Pilate gesture. She was washing her hands of
me. Of all of us.
What had she been thinking of as the car sailed off the bridge, then hung
suspended in the afternoon sunlight, glinting like a dragonfly for that one
instant of held breath before the plummet? Of Alex, of Richard, of bad faith,
of our father and his wreckage; of God, perhaps, and her fatal, triangular
bargain. Or of the stack of cheap school exercise books that she must have
hidden that very morning, in the bureau drawer where I kept my stockings,
knowing I would be the one to find them.
When the policeman had gone I went upstairs to change. To visit the
morgue I would need gloves, and a hat with a veil. Something to cover the
eyes. There might be reporters. I would have to call a taxi. Also I ought to
warn Richard, at his office: he would wish to have a statement of grief
prepared. I went into my dressing room: I would need black, and a
handkerchief.
I opened the drawer, I saw the notebooks. I undid the crisscross of kitchen
string that tied them together. I noticed that my teeth were chattering, and that
I was cold all over. I must be in shock, I decided.
What I remembered then was Reenie, from when we were little. It was
Reenie who’d done the bandaging, of scrapes and cuts and minor injuries:
Mother might be resting, or doing good deeds elsewhere, but Reenie was
always there. She’d scoop us up and sit us on the white enamel kitchen table,
alongside the pie dough she was rolling out or the chicken she was cutting up
or the fish she was gutting, and give us a lump of brown sugar to get us to
close our mouths. Tell me where it hurts, she’d say. Stop howling. Just calm
down and show me where.
But some people can’t tell where it hurts. They can’t calm down. They
can’t ever stop howling. 

*output:* 
ThE brIdgE
TEn dAys AftEr thE wAr EndEd, my sIstEr LAUrA drOvE A cAr Off A brIdgE. ThE
brIdgE wAs bEIng rEpAIrEd: shE wEnt rIght thrOUgh thE DAngEr sIgn. ThE cAr
fEll A hUndrEd fEEt IntO thE rAvInE, smAshIng thrOUgh thE trEEtOps fEAthEry
wIth nEw lEAvEs, thEn bUrst IntO flAmEs And rOllEd dOwn IntO thE shAllOw
crEEk At thE bOttOm. ChUnks Of thE brIdgE fEll On tOp Of It. NOthIng mUch wAs
lEft Of hEr bUt chArrEd smIthErEEns.
I wAs InfOrmEd Of thE AccIdEnt by A pOlIcEmAn: thE cAr wAs mInE, And
thEy’d trAcEd thE lIcEncE. HIs tOnE wAs rEspEctfUl: nO dOUbt hE rEcOgnIzEd
RIchArd’s nAmE. HE sAId thE tIrEs mAy hAvE cAUght On A strEEtcAr trAck Or thE
brAkEs mAy hAvE fAIlEd, bUt hE AlsO fElt bOUnd tO InfOrm mE thAt twO
wItnEssEs – A rEtIrEd lAwyEr And A bAnk tEllEr, dEpEndAblE pEOplE – hAd
clAImEd tO hAvE sEEn thE whOlE thIng. ThEy’d sAId LAUrA hAd tUrnEd thE cAr
shArply And dElIbErAtEly, And hAd plUngEd Off thE brIdgE wIth nO mOrE fUss
thAn stEppIng Off A cUrb. ThEy’d nOtIcEd hEr hAnds On thE whEEl bEcAUsE Of
thE whItE glOvEs shE’d bEEn wEArIng.
It wAsn’t thE brAkEs, I thOUght. ShE hAd hEr rEAsOns. NOt thAt thEy wErE EvEr
thE sAmE As AnybOdy ElsE’s rEAsOns. ShE wAs cOmplEtEly rUthlEss In thAt wAy.
“I sUppOsE yOU wAnt sOmEOnE tO IdEntIfy hEr,” I sAId. “I’ll cOmE dOwn As
sOOn As I cAn.” I cOUld hEAr thE cAlmnEss Of my Own vOIcE, As If frOm A
dIstAncE. In rEAlIty I cOUld bArEly gEt thE wOrds OUt; my mOUth wAs nUmb, my
EntIrE fAcE wAs rIgId wIth pAIn. I fElt As If I’d bEEn tO thE dEntIst. I wAs fUrIOUs
wIth LAUrA fOr whAt shE’d dOnE, bUt AlsO wIth thE pOlIcEmAn fOr ImplyIng thAt
shE’d dOnE It. A hOt wInd wAs blOwIng ArOUnd my hEAd, thE strAnds Of my hAIr
lIftIng And swIrlIng In It, lIkE Ink spIllEd In wAtEr.
“I’m AfrAId thErE wIll bE An InqUEst, Mrs. GrIffEn,” hE sAId.
“NAtUrAlly,” I sAId. “BUt It wAs An AccIdEnt. My sIstEr wAs nEvEr A gOOd
drIvEr.”
I cOUld pIctUrE thE smOOth OvAl Of LAUrA’s fAcE, hEr nEAtly pInnEd chIgnOn,
thE drEss shE wOUld hAvE bEEn wEArIng: A shIrtwAIst wIth A smAll rOUndEd
cOllAr, In A sObEr cOlOUr – nAvy blUE Or stEEl grEy Or hOspItAl-cOrrIdOr grEEn.
PEnItEntIAl cOlOUrs – lEss lIkE sOmEthIng shE’d chOsEn tO pUt On thAn lIkE
sOmEthIng shE’d bEEn lOckEd Up In. HEr sOlEmn hAlf-smIlE; thE AmAzEd lIft Of
hEr EyEbrOws, As If shE wErE AdmIrIng thE vIEw.
ThE whItE glOvEs: A POntIUs PIlAtE gEstUrE. ShE wAs wAshIng hEr hAnds Of
mE. Of All Of Us.
WhAt hAd shE bEEn thInkIng Of As thE cAr sAIlEd Off thE brIdgE, thEn hUng
sUspEndEd In thE AftErnOOn sUnlIght, glIntIng lIkE A drAgOnfly fOr thAt OnE
InstAnt Of hEld brEAth bEfOrE thE plUmmEt? Of AlEx, Of RIchArd, Of bAd fAIth,
Of OUr fAthEr And hIs wrEckAgE; Of GOd, pErhAps, And hEr fAtAl, trIAngUlAr
bArgAIn. Or Of thE stAck Of chEAp schOOl ExErcIsE bOOks thAt shE mUst hAvE
hIddEn thAt vEry mOrnIng, In thE bUrEAU drAwEr whErE I kEpt my stOckIngs,
knOwIng I wOUld bE thE OnE tO fInd thEm.
WhEn thE pOlIcEmAn hAd gOnE I wEnt UpstAIrs tO chAngE. TO vIsIt thE
mOrgUE I wOUld nEEd glOvEs, And A hAt wIth A vEIl. SOmEthIng tO cOvEr thE
EyEs. ThErE mIght bE rEpOrtErs. I wOUld hAvE tO cAll A tAxI. AlsO I OUght tO
wArn RIchArd, At hIs OffIcE: hE wOUld wIsh tO hAvE A stAtEmEnt Of grIEf
prEpArEd. I wEnt IntO my drEssIng rOOm: I wOUld nEEd blAck, And A
hAndkErchIEf.
I OpEnEd thE drAwEr, I sAw thE nOtEbOOks. I UndId thE crIsscrOss Of kItchEn
strIng thAt tIEd thEm tOgEthEr. I nOtIcEd thAt my tEEth wErE chAttErIng, And thAt
I wAs cOld All OvEr. I mUst bE In shOck, I dEcIdEd.
WhAt I rEmEmbErEd thEn wAs REEnIE, frOm whEn wE wErE lIttlE. It wAs
REEnIE whO’d dOnE thE bAndAgIng, Of scrApEs And cUts And mInOr InjUrIEs:
MOthEr mIght bE rEstIng, Or dOIng gOOd dEEds ElsEwhErE, bUt REEnIE wAs
AlwAys thErE. ShE’d scOOp Us Up And sIt Us On thE whItE EnAmEl kItchEn tAblE,
AlOngsIdE thE pIE dOUgh shE wAs rOllIng OUt Or thE chIckEn shE wAs cUttIng Up
Or thE fIsh shE wAs gUttIng, And gIvE Us A lUmp Of brOwn sUgAr tO gEt Us tO
clOsE OUr mOUths. TEll mE whErE It hUrts, shE’d sAy. StOp hOwlIng. JUst cAlm
dOwn And shOw mE whErE.
BUt sOmE pEOplE cAn’t tEll whErE It hUrts. ThEy cAn’t cAlm dOwn. ThEy
cAn’t EvEr stOp hOwlIng. 
