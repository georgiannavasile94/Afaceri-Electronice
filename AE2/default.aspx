<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AE2.Reclamatii" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reclamații&Sugestii</title>
    <style>
        body {
            background-color: antiquewhite;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .required:after {
            content: "*";
            font-weight: bold;
            color: red;
        }

        .button {
            top: 50%;
            background-color: brown;
            align-self: center;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .wrapper {
            text-align: center;
        }

        .mesaj {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font: bold;
            font-size: medium;
            padding: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
    </br></br>
    <h1 style="text-align: center; color: brown; font: bolder;">Reclamații & Sugestii</h1>
    </br>
    <div style="font: 300; font: bold; text-align: center; width: 920px; padding-left: 180px; padding-right: 180px;">
        Suntem deschiși să discutăm despre orice nelămurire ai putea întâmpina. 
        În cazul în care ai o sugestie, o reclamație sau pur și simplu ai nevoie de alte informații, completează formularul de mai jos.
    </div>
    <div style="text-align:right;font-size:x-large;font:bold; float:right; margin-right:320px;margin-top: 70px;margin-bottom:20px; width:700px;;">Mesaje recente:</div>
    <form id="form1" runat="server" style="margin-left: 180px; margin-right: 180px; margin-bottom: 10px;margin-top: 40px;">
        <div>
            <div style="width: 480px; height: 360px; border: 2px groove brown; display: inline-block; padding: 15px;">
                <div style="display: inline-block; margin-right: 15px;">
                    <div class="required" style="margin-bottom: 8px;">
                        <asp:Label ID="Label1" runat="server" Text="Nume"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ID="reqNume" ControlToValidate="txtNume" ErrorMessage="Câmpul Nume este obligatoriu!" />
                </div>
                <div style="display: inline-block;">
                    <div class="required" style="margin-bottom: 8px;">
                        <asp:Label ID="Label2" runat="server" Text="Prenume"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPrenume" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ID="reqPrenume" ControlToValidate="txtPrenume" ErrorMessage="Câmpul Prenume este obligatoriu!" />
                </div>
                <div style="display: inline-block; margin-top: 8px; margin-right: 15px;">
                    <div class="required" style="margin-bottom: 8px;">
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ID="reqEmail" ControlToValidate="txtEmail" ErrorMessage="Câmpul Email este obligatoriu!" />
                </div>
                <div style="display: inline-block; margin-left: 7px;">
                    <div style="margin-bottom: 8px;">
                        <asp:Label ID="Label4" runat="server" Text="Telefon"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
                    </div>
                    </br>
                </div>
                <div style="width: 500px;">
                    <div class="required" style="margin-bottom: 8px;">
                        <asp:Label ID="Label5" runat="server" Text="Mesajul tău"></asp:Label>
                    </div>
                    <div style="text-align: left; height: 90px; width: 450px;">
                        <asp:TextBox ID="txtMsj" runat="server" TextMode="MultiLine" Height="80px" Width="387px"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator runat="server" ID="reqMsj" ControlToValidate="txtMsj" ErrorMessage="Completați mesajul dumneavoastră!" />
                </div>
                <div class="wrapper">
                    <div>
                        <asp:Button class="button" ID="btnTrimite" runat="server" Text="Trimite" OnClick="btnTrimite_Click" />
                    </div>
                </div>
            </div>
            <div style="float: right; display: inline-block; overflow: scroll; border: 2px groove brown; height: 385px; width: 300px;">
                <asp:TextBox CssClass="mesaj" ID="txtUltim1" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim2" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim3" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim4" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim5" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim6" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim7" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim8" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim9" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
                <asp:TextBox CssClass="mesaj" ID="txtUltim10" runat="server" TextMode="MultiLine" Height="45px" Width="275px"></asp:TextBox>
            </div>

        </div>
    </form>
    <div style="margin-left: 180px; margin-right: 180px; margin-bottom: 70px; margin-top: 10px; font: bold;">
        <asp:Label ID="lblSucces" runat="server" Text="Mesajul a fost trimis cu succes!"></asp:Label>
        <asp:Label ID="lblRequired" runat="server" Text="Completați câmpurile obligatorii!"></asp:Label>
    </div>
    <fieldset style="margin: 40px 180px 40px 180px; align-content: center; overflow: scroll; height: 400px;">
        <label style="font: bold;">
            Avand in vedere ca, urmare a faptului ca veti completa datele cu caracter personal ale dvs. sau ale altor persoane, vom prelucra aceste date in scopul furnizarii de servicii de asigurare sau in alte scopuri agreate, dupa caz, va rugam sa parcurgeti prezenta Informare privind protectia datelor cu caracter personal:           
        </label>
        <div style="overflow-wrap: normal; font-size: small;">
            <div style="box-sizing: border-box;">
                <div style="font: lighter;">
                    <p>In conformitate cu Regulamentul general al Uniunii Europene privind protectia datelor (Regulamentul UE 2016/679, “<strong>GDPR</strong>”). Va informeaza dupa cum urmeaza:</p>
                    <p>Pentru a face demersuri in vederea incheierii de contracte de asigurare cu noi, cu sediul in Bucuresti, Piata Charles de Gaulle, nr. 15, etajele 6-7, Sector 1 (“Sediu”), cat si pentru executarea sau, dupa caz, reinnoirea unui astfel de contract, datele dumneavoastra personale, inclusiv, dar fara a se limita la cele de pe copia actului de identitate sau de pe alte documente de identificare, dupa caz, date privind sanatatea, imaginea dvs. vor fi colectate si prelucrate de catre noi. In consecinta, fara a avea la dispozitie datele dumneavoastra cu caracter personal necesare, noi nu vom putea sa incheie polita de asigurare pe care o solicitati sau, dupa caz, nu va putea executa contractul de asigurare in care sunteti/veti fi parte/ale caror efecte se produc fata de dvs., inclusiv dar fara a se limita la activitatea de plata a despagubirilor. O eventuala prelucrare ulterioara in scopuri statistice se va face cu respectarea principiului reducerii la minim a datelor si, in masura in care este posibil, va exclude prelucrarea datelor cu caracter personal, presupunand date agregate, care nu sunt utilizate in sprijinul unor masuri sau decizii privind o anumita persoana fizica.</p>
                    <p>Datele dvs. cu caracter personal sunt prelucrate de noi pentru urmatoarele scopuri:</p>
                    <ul>
                        <li>Prestarea serviciilor de asigurare (cotatii, managementul riscului, ofertare, emitere, administrare polite, memento plati scadente, reinnoiri polite, instrumentarea si solutionarea daunelor, exercitarea dreptului de regres si/sau, dupa caz, verificari in scopul prevenirii si identificarii potentialelor fraude);</li>
                        <li>Marketing si scopuri statistice, in cazul in care va exprimati consimtamantul pentru acest scop;</li>
                        <li>Indeplinirea unor obligatii legale si cerinte ASF sau ale altor autoritati.</li>
                    </ul>
                    <p>Prelucrarea datelor dvs. cu caracter personal se face in baza:</p>
                    <ul>
                        <li>Contractului de asigurare in care sunteti parte, pe care solicitati sa il incheiati sau in baza caruia solicitati o despagubire sau, dupa caz, interesul legitim al nostru de a realiza un management al clientilor in vederea subscrierii, precum si de a preveni acordarea nejustificata a platilor de despagubiri;</li>
                        <li>Consimtamantul dumneavoastra conform Formularului de Acord in acest sens;</li>
                        <li>Unor obligatii legale.</li>
                    </ul>
                    <p>Datele dumneavoastra cu caracter personal pot fi transferate catre: autoritati de stat (inclusiv instante, autoritati fiscale), furnizori de servicii (inclusiv reasiguratori, furnizori de servicii de calculatie a primelor, unitati reparatoare, clinici, consultanti, experti, dezvoltatori de servicii IT, societati de arhivare), intermediari, alte companii din Grupul nostru si alti destinatari imputerniciti expres de catre noi, in conformitate cu prevederile legislatiei aplicabile privind protectia datelor cu caracter personal si cu scopurile prelucrarii.</p>
                    <p>Datele dumneavoastra cu caracter personal colectate pentru incheierea contractului de asigurare, pentru executarea acestuia, inclusiv pentru acordarea de despagubiri, vor fi retinute in baza de date a noastra, <em>pentru faza de ofertare</em> 60 de zile de la data emiterii ofertei si <em>dupa incheierea contractului</em>, pe perioada in care dvs. sunteti Contractant, Client, beneficiar al despagubirii (inclusiv tert de contract, in conditiile in care efectele contractului se produc fata de dvs.), la care se va adauga perioada de timp in care datele sunt necesare pentru exercitarea de catre noi a drepturilor rezultand din contractul/contractele de asigurare si pentru indeplinirea obligatiilor rezultand din legislatie si din reglementarile interne privitoare la stocare.</p>
                    <p><strong><u><b>Aveti urmatoarele drepturi</b></u></strong> ce rezulta din Regulamentul UE privind protectia datelor cu caracter personal:</p>
                    <ul>
                        <li><strong><b>Dreptul de Acces </b></strong>&#8211; puteti solicita accesul la datele dvs. cu caracter personal;</li>
                        <li><strong><b>Dreptul de Rectificare sau de actualizare </b></strong>&#8211; puteti solicita companiei sa corecteze datele dvs. cu caracter personal care sunt inexacte sau incomplete;</li>
                        <li><strong><b>Dreptul de Ştergere</b></strong> &#8211; puteti solicita sa stearga datele dvs. cu caracter personal in cazul in care se aplica unul dintre urmatoarele temeiuri:
                            <ul>
                                <li>Atunci cand datele cu caracter personal nu mai sunt necesare in legatura cu scopurile pentru care au fost colectate sau prelucrate;</li>
                                <li>Va retrageti consimtamantul pe care se bazeaza prelucrarea si daca nu exista alt temei juridic pentru prelucrare;</li>
                                <li>Va opuneti procesului decizional automatizat si nu exista temeiuri juridice intemeiate care sa prevaleze pentru prelucrare sau va opuneti prelucrarii in scopuri de marketing direct;</li>
                                <li>Datele cu caracter personal au fost prelucrate ilegal;</li>
                                <li>Datele cu caracter personal trebuie sa fie sterse pentru a respecta obligatia legala in temeiul dreptului Uniunii sau al dreptului intern care se aplica companiei;</li>
                                <li>Datele cu caracter personal au fost colectate in legatura cu oferta serviciilor societatii informationale.</li>
                            </ul>
                        </li>
                        <li><strong><b>Dreptul de Restrictionare </b></strong>&#8211; puteti solicita sa restrictioneze modul in care prelucreaza datele dvs. cu caracter personal in cazul in care se aplica unul dintre urmatoarele:
                            <ul>
                                <li>Contestati exactitatea datelor dvs. cu caracter personal, pentru o perioada care sa permita sa verifice exactitatea datelor dvs. cu caracter personal;</li>
                                <li>Prelucrarea este ilegala si va opuneti stergerii datelor cu caracter personal si solicitati in schimb restrictia de utilizare a acestora;</li>
                                <li>Noi nu mai avem nevoie de datele cu caracter personal in scopul prelucrarii, dar ele sunt solicitate de dvs. pentru constatarea, exercitarea sau apararea unui drept in justitie;</li>
                                <li>V-ati opus prelucrarii in conformitate cu dreptul de a obiecta si procesului decizional automatizat, in asteptarea verificarii daca temeiurile legitime ale companiei prevaleaza asupra temeiurilor dvs.</li>
                            </ul>
                        </li>
                        <li><strong><b>Dreptul la Portabilitate</b></strong> &#8211; puteti solicita primirea datelor dvs. cu caracter personal intr-un format structurat, utilizat in mod curent, prelucrabil automat sau, in masur in care este posibil din punct de vedere tehnic,  sa transfere datele dvs. cu caracter personal catre o alta organizatie;</li>
                        <li><strong><b>Dreptul de a obtine confirmarea</b></strong> cu privire la faptul ca datele cu caracter personal referitoare la Dvs. sunt sau nu prelucrate si comunicate intr-o forma inteligibila;</li>
                        <li><strong><b>Dreptul de va modifica sau retrage consimtamantului</b></strong>. Acest drept se aplica numai daca a fost colectat consimtamantul dvs. &#8211; va puteti retrage oricand consimtamantul  pentru prelucrarea datelor dvs. cu caracter personal pentru care v-ati dat consimtamantul, fara a aduce atingere legalitatii consimtamantului dat inainte de revocare;</li>
                        <li><strong><b>Dreptul la opozitie</b></strong> &#8211; puteti sa va opuneti prelucrarii datelor dvs. cu caracter personal care o privesc, cu exceptia cazului in care demonstreaza ca are motive legitime care justifica prelucrarea;</li>
                        <li><strong><b>Dreptul de a vi se comunica orice rectificare sau stergere sau restrictionare a prelucrarii</b></strong>;</li>
                        <li><strong><b>Dreptul de a fi notificat in caz de incalcare a securitatii datelor;</b></strong></li>
                        <li><strong><b>Dreptul sa depuneti o plangere la Autoritatea Nationala de Supraveghere a Prelucrarii Datelor cu Caracter Personal.  </b></strong></li>
                    </ul>
                    <p>Va rugam ca, in cazul in care, in vederea incheierii sau executarii unui contract de asigurare cu noi, ne transmiteti (si) datele cu caracter personal ale altei persoane, sa comunicati prezenta Informare persoanei respective si sa luati Acordul acesteia, in cazurile aplicabile. In cazul in care datele cu caracter personal comunicate sunt ale unui minor, parintele sau tutorele va fi cel informat pentru copilul minor.</p>
                    <p>Pentru orice solicitari pe care le puteti avea cu privire la exercitarea drepturilor mentionate mai sus sau la retragerea consimtamantului, precum si pentru a ne adresa orice alte intrebari privitoare la cele comunicate prin prezenta, puteti sa ne contactati la adresa de e-mail: <a href="mailto:protectiadatelor.ro@generali.com"><strong><b>protectiadatelor.ro@generali.com</b></strong></a><strong><b>,</b></strong> in atentia Responsabilului cu Protectia Datelor si/sau la adresa postala mentionata mai mai sus.</p>
                </div>
            </div>
        </div>
    </fieldset>
</body>
</html>
