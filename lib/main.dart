import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import './Color.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: HomePageWidget()));
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: const Color(0xFF25D366),
        elevation: 8,
        child: const Icon(
          Icons.message_rounded,
          color: Colors.white,
          size: 24,
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  labelColor: primaryColor,
                  labelStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                  ),
                  indicatorColor: secondaryColor,
                  tabs: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Icon(
                            color: Colors.white,
                            Icons.camera_alt,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                    const Tab(
                      child: Text(
                        'CHATS ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Tab(
                      child: Text(
                        'STATUS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Tab(
                      child: Text(
                        'CALLS',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Image.network(
                        'https://picsum.photos/seed/356/600',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        constraints: const BoxConstraints(
                          maxWidth: 100,
                          maxHeight: 100,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  maxHeight: 80,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'images/mariem.png',
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Mariem',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Hi ! Where are you ?',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: secondaryText,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Expanded(
                                            child: AutoSizeText(
                                              '02:10 AM',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  maxHeight: 80,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'images/ahlem.png',
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Ahlem',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 5, 0),
                                              child: Icon(
                                                Icons.done_all_rounded,
                                                color: secondaryText,
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              'Hi ! Where are you ?',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: secondaryText,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Expanded(
                                            child: AutoSizeText(
                                              '10:00 AM',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  maxHeight: 80,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANgAAADpCAMAAABx2AnXAAABlVBMVEX////85mz3vZVfNR8REiQApdJsQy0AAADa2tv0qJD4vZP3vJb85mn86Gr85m33u5djOSNoPykAhb4Ao9T85WTyk4H/7W9dMx4Aodf+/fX2vpQApdH/6WQAABf876X9+uYAABz86H1YKxtYLRf87Jj3wo9WJhn4yIr62Hr86o3853X9+Nz899Lv2Wb99Mn9++oAe7nvr4788bP99MG8o07opIj63Hb61H73wJD2s4//vpCUlJofIC9qanMAABFUVF+FZDPYwVu5n03lz2LKsFWPYUfhqoTQnHmrelz328zzzbxfqNDxu6H4zIf50IL88K3N2IVfvNt/xuHj9fio2OiNjZV5eYEpKjhBQUw6Okefg0BNFhSLbDV0TyuskEZBAA2/jm6XaU18UTl8WC5PJAeUdjr67ePL4+8lj8NwsdMWdqeZxd/5z7IbUG41R1RSnstFJQ8/LB4jZoo+LBhFscEnq8mlypyKw6bi3npqureTsrLR2YO10JLOuaJxrb7Ht6Kls62mwqWDwatXtb2Y0eTe3uHCwsT8iKIQAAAYmUlEQVR4nO1diV8TSdomEUTT1d2J6S9NmoCBQIBowCB3SCKKgKM4XklAxQ8BdcZx15ldcXR2rp1x+Lv3rb6PSld1DtD58ShX0umup9633quqq7u6TnGKU5ziFKc4xSlOcYpTdAhJFSfdinYhefHS5PTgyMTQ0FBOBfwyMTI4PXnp4hfLcWpyeiIXkgBIRQhD+xXhV4XcxPTk1Em3MhiSl6YnUAozCvlA4zcxfekLkd3F6QkBOIUEP1IGNyGEpFRoYvriSbeahkuDOUwqIEB0ucFLJ932xrg4iCja58MNPjr4WcoteXUouKjcghu6+rmNt4sjoVZpqdRSoZHPSWyXh1JS66w0SKmhyyfNR8fkUKoNwrIAGjl50py6MK126OBnR+1SB2jp1E7S/E+NdIaWRu3kzMh052hhSGj6RGhdzrXNEjZCKnf8BjI5KCGhowIDCEgaPGaPfQzi0iAdr9AGOzu67AChHRuti0PHJC4N0tAxmcfJ4xOXBiQdi7v++ljFpUH6uuO0khMnwAuYTXTYOk7ljlkNTWa5jtZ9LoWa48UnEq0yQ6EOBo+XA5sNxCd4IX9j9frjGy0zkzrm0SaDDS8QU35l5vG1nWw2+2S1DSrcKeN4NUg+CZJaebYfzWaHZcCTVVMV+RAPjAE8H1j80tXO8GJnxednnj7JZmX5DIacxbzwOBPy+ZWV1ZmZ69evz8ysrtzI5wX8Os/zbCdOdYAZO69EfvUaSOqMiexMAmvl9Rf7seGsBuNnNrpz7cWz1ZV8COgxnLv9MmMdX3zixouoISpTXiuPd+Ts8LD9Zf1NWR4eBpby2f3Hqzd4Ort2j7PLbOOLR6v7MKocbc88fjacJXByMcT0sjvPVvOCLzmUaqttvMQiL4EPre5kvQTkYQop+6FA7sXMDcGHm9RGfzbF4JdRKLGyT6AFrWWlpR4sZ5/8f8bP66FQ22KQJEsclcg/fRKIAolVdjh67dlKPuE//ZRrV9w4QeUl8PyM3Q6SEcXQGJB5vVi5wWIdpYn28GLIUxL5a0QttJGKnTUR0+l5iO08yzPFlO3JYhgMfWLFX1x2ViY5ErNslo1aO4z+RTov9MxfXF5aBjevX8vKMyEGTy21Xi1gMBxPfXlFY+rYIrEjiU3O7t+gCw0NtcprkCYwXthn81Ny1Bpi6iDDbMnUrtOZtVq7ukzjhfI7VGuoS04TGugfrR/k7NM83TS2FIFQPRgveHgRm+3QRKLhcGB4h6qOSGjFm41QLYdXXuZwihmK5h1fJLvhZDa8QmMmjTTPi6qIYDecDYrZ2h41iUY1xOwEKVKTs3RmzSsjTRETj528YjaJNIDFLkZhNrxKYYZyzfL6WvJfXZNYddj5KKs0DNX0P4wqM6HZAITmmvkbDl42cUUbxExGkw1uNGY3KLaxSTdNjX33Mw5eKiGbgaAYP8yNwmyHYvVRU9EwLblMzNgHWBQPGdnGi0knKQcMX6MMs6aSziF/gaG8N+CIGWYepAW2EP/0Z3aGwjz7zJ9ZM5EVLahPvHB7sGjjhKRZyE8ow6yJMJ8isFDe5cFwsNtWUhqznZDvwsfgIgsssDbLygAExL49HFhkVIG1Wt9ghCznfdsRVGS0YCpx3a2J7aHhfWn4sb/9CBhY0QQW2u+IxAj6LD9pp8ioBVKP6WgTCF59+AVFZEF82QgtDZvx2sS2EJNj3uCYNsoCpC9J2pLlxDWXJlI9MTO8gRbFSyPEnnFepYT1odATx6XBNdt7uGVmzl6Sd3xbI0jsi+RopoNfybqaYvsrc03OZAgNlmV4PYPnNynMPEFmdsW3Nezmg2Y6hMQzu3fGymNr7MEat3vzTMaFM7G9vZsYe3sx7U0HP5wYmC+oAaftbZrFT7Gaj0GarU/YjH3UnQxnwuFwJLy2vrvxXMXG7vr6WjiiRFSEI/Abfvf5XtROLmZLvKOuBFvOUEJh1lIcjReft3pXbYTxO6T9MXkvrCGC/0XUX5SwF0qYW9u4mTG1Vk+roxZLuy5SMo32aGIIWUMsag0IPSfObEQINBoBtNaUW9TK4VxFEVoFldGV0TXRjKcspTE7ObMWgJeK3T2DW8wgFHMyk/fboovUar0Z2Wt9bP6iJtF7VCJerN88yDiF5kzA5TP+7oetXkWfXkGG7XB2sNqMzG4QTTSxdvPAITS9MmSIbHjFv0VMVZ1pKjHDdsQc3av17dlmaIGBUdb3HEJz1h6zq5REmsVHU4tTvB4B601wjPSD9eaIYezKGUsPnNUgmidjKVcl6fNhulEkdG3meVOKqEKJrOlCs1fC9UH2lFYVpseL9CUdemjvKMTri6bOkjwWOyK7mnnUnIitpirvU4JXhmUt9CGmBlSyXWCm9Qps6p3gwmtRk1lMtoIaOeafurAMMvrah8TjYcvC23jJB+vNK6IhM10do9ppzfB6mEKMYZBRM5ZQ4umwrokx9bvBK9M6L4ybBrOYmndqZ89SFqgKEo3XFH31nhYCq7yiFq/M2bW28LIxUy0UG7GQRFuHxHC3QAKnFFFDVbRBkMnstmY3bFA0Zpqw9JIDLQymF6toc2KYmKx2aEwVm5Y3ZfY4YgjfJDNtnGnlBlZitLkyuu0IJYZViVnqEjCiZ4DWXerJdVVcpTSKaj0Y1qsk8HyfmhNq2iI3GR/6YE0bZlaBgE6MEgcnqbQwMUNDtAGWWW+fFhrYzVjS0ohRO9w/9mBYOaURixq6IneCl24abcRoYyyE/AN8ljWyCWPqWVWVzC6hWcFUM0I63FnFoxOjZNEsi7UTxlSmyssb9kbC6xvPAwRXa8831jnPSTRlNIlR7yChzCfRI0UgFrWIyTFvOyEdzmSinqY2BC43Htxcj7g0+qxdZFlKSEWNFqn1Dkxsx7qkN/96rtadMmeYeUXUiF7OPHe+rNhFRpslC1HrHrTZCJWYVbjP3HQr4tkMDkMye+wJZwRyZ+gMGWIyx+ucbZRRo3vq3ASDf7bP0npKUjdxC2GABXRsa89l2d1LkZuWyOR9aqsoHpqJmFngztx09/7GQZPBMKQrB674xaaLw7QMmlrBp85kYmLXTWJehdvY0KwGu+3Axl5RP+nmaqkirebRHmL8ql4vbVSSikS4O6JC9E4kWsobTi+Fu96y7CLDYlp/YskcnRdeHKYLjBT7KhHx1kt8rpdvGJhF3mjH3hLd1h7ee27qYnaFvrLb9/4Jpps9Qnm9Ik3QRGjOV+bZXtJsSER5aR781aKni8xBJg8z3OFJIcbAKyRolWA5Q2rrLfVED1+9egin43yZKWHzSMCtRbfM1g4MYlGGVrWBmG7v5T1vszV5Pfz2CuD2w66kv8CSXQ/fwoEXbqvUvnKfjjOJUSYl2kZMm23JuM0YoKCe5tU3FwBXrrzquuUjMhDuqwvqgd9qMiu4jzCiewajSCHGZBWNKWjChJGuiF0Pr6gtvtDV5aeLyS61Ay681S9+y2VAInu6WaSV7jHaYO5hkOEwmGTsC0avXXn9Goviu67GpjHypus7zP/169vG1V32wzSLlMU57SOmRoukhOWOKq6uru/+cXDwT1UWjXURpPsWDvnnwcE/XoH2knRxI6OHwAyaSCHGElLhVbPDuO7rbatK7O3btxcOvv/+AGT2TddLP2Kgia/hyO+v3P5GVcc7roM3cOQpUxcdacRajxUB+Sdn9vYIQ0wldhsU7HuDmK/E8BADYj+A0t4mEdvNyLHne5nsTOvEWNIWQGKXXEcU8TnwyHn9w7//Ba2+7Ufsq67bcMi//v3Da3U0ElRxN5NZUyBzZdmAgZK2sCSaYBbviqJICHOVRRxJGCYRmvuq600jXuHwm65X9iPB2biDj/UnGxGFE8W7DLfKURJNltJACM2Js4XZAkFkmn/+Tm8v6FfSz4+9VLVW82T4cx4PvQaZHVxoVpyj9zelNMB05z0aKwCrguhlpiyq9v5btb1XwCD4BsJvwNBcsXi5rT0OqMNcIawUCqM8tfBOKeawlN9QLjzL4csR2qqo5qPrFRjyt4+6fAMPzZ0/wkeqtt5jOlTAVRRulpujS8y//DbFMMbQOFfgQBlJuaSiGUYdL725iIeZiTvEg7nZWZEriOPUdiH/eaQkw+6+/DxcqTDbIEeOiGYq4i8v9eA3Zh+IDQ7mZuFi3Dz9HnPK9DpD6IHmoQ/Ds4Qhprf2DmSayZdvWCo6kfCbl8nky1uquIhrycTZcIGjE6MuWiQ4MuQytmAU4VpEkSlhDgD5/tISoTKgKCRDGlmCf2DTRZH0dngWiIXdqujdlYa6Mtht7xHP39107TeYA08Muu8xHgpXOK9hcY2kqIUCcWAq4cXz52fxxwoeoSkFIMYpnDOdQpt33bvRUJcNuO4kQLmxOUUcd56EH1ON4qyn4bhx62oTSaxnVXCuthfWw/j4Wb1H3MwK2PhyY44GgMooc2NOrtSp2mTKbj4QvymOLYh3kUMfUY7D0nF5aMUQlwZOceniLHbpi7NuDeY4x8fcbl91KqJVisF7I/HzojImjtllJqSoS3McXTO/OSaOKtBhaG7M5v3BfECDwuqX1UJHA0EbnRJdVEMVUC2nUBRl0fjEuvrd8SFRLVCK8xYFaAdojLgwyo1tztuZ0Xg5rAcaFUfDCwvcggDnUmxv8OMwykRx06FqartmjSYWwk6l04wNKKRTSUU8Lg1FVCVtP+cmhKRi2GY5eEUc5dFCeBT+cwsWMYa7Cq5KdmLcQjg8GuZyaIELO2TJj8+PC/ymvRm2bscSc6oUjo00gk5VXFtbPO+ArTe4sZQwPj9nv7sBKWGRz3HKggLNGrWIMWzrZJ+shYYvKNwoWFuBg/5xOG/8MAVs+G2d72hgmA2K3iEGHCcE7UeumzZGOTE0LoK4lAVu00aMvhLTHnvgsbQQBm6bcxw3Ssgd+DF7Gy1mHhPhR01VRoOXXX0JV0RjnDi3iZPBBcU+9Fg2HrDtL4DmcMcocG0uTCTmFBmoiWYZFwuBlsEBNc2NLTpctDhHIDbKhdVLwpGiZfCZbtxxDjIrLlK8vDSXZm+ijiC0tC7RG2uDy3np11uwDliwlJRp5zR7gA+psnUiYl0/ZxdZW8ERi7fm5TjOlldTQnsdjjjYuhA5jQVn2RlexHqAXfUVyxgw3rZjDxfRuNVF5PwctLUTIA5piHmM5oDpsGki241WjtU54JmNS5GTPRxfscAYQIwDUMyRiPGmxET7CGTdTMGh3MhkppBnLPhxqjKCOeHERQMsKwDtptwGwfikg1eIdWMPZ+rCj2uWSCGaqZDLwhB5Lf6fC54g3s1rk3gpZNjgUQdv5lv+ppypC8/PaedrWN8bo8nsvJMXLSwRR4lab/QgODjH+9RlsybchW5+VGfWoKYiLFDGmVNmNHlB0E3kpQ8wDmjb2xFgVw9PddEYsw0sIwMz5bwlLiovosdEOf196F6nwNi3G/BMbPKjvn0JF6Ux0woAOOinWQ7gReo6ZHQe59LTQNstunceNB2j+6zmAcICbZwpYaZgC/qugb/Uu050FU8DbQmUdOsiv2kyIxKD9IJiQZTFRVG1+RReYw14Gaf32GYp0I5inipczvIgDUp8aNOXmVEC8Lcc4iZCJG23dZtLUYPckQ+46L5hwooJxQbujOapFVHzzr68yH45ZKXqniNSAbdw8kxtWrGVOEYmFuJzo/7UaG55lBhHOa/talfgHZw80y7IDGcwswYmJHSXNB/IBk6822DvBpsecm49Db6Bk0dktpRBHG20cTAWWnN3F4ijhIRZ61GLlydCaGLLLe9MmS0mbOBDQ2r5SmkiQxOV8Qa7xCOb8/fGdM3suOWdnkBWHYBT5hpNMiI0T/VpbloL8w1VYE6xLuoxyAFNooYp7+SmYKs4uAv69sYIQI1jHWwc0BIa7YzCj9tP4+lK9vDXDu/Gx2a4pjLb9Jmz4ufGwix2hBPDY3MNt/FHyJ4RcR6b2eQ+hMmcpx8d5baG1jmEQzsQm8rNx8RjVvONz+FyH94MvulNuSe9tzU6nLAYbqyO+Lp8bnxzgbwihONEcWFzPOf3zAV+3L5kmuC7m9/fmbAAiZ+3N1Mc89uZXp02FObujmG7ppcO1VlPZWHs7rjg/7QMXrAHnwohyW1ud0UVXvshuAoBXFhLjnybyOdnZws2LMKoQqghLfWETnERawXNWQ4NVwnLPnhnsCuO5XjE35P87sadmzVRWIxEOL8l1anUPRigOWeuQDJUATY3IoC0Gs7FDEKh3Lu+w/c88X5c6H6Bz2uCwrPuGFyDGAOOlkLvD/ve5e46nQVJXi3uxj1FcDCCi1nkTn+8Jx7v//GD94kaCKEU2BCdkQ5u/AOfIjyHGKU+/Ain6unpd4ZlRF5sVe3GICmjS2ZLh7gxPT19PR/v2aghJKVSH+69/3j401LEiXD/u4/v731I2dlBD/znY792pp5D22IKhegwW380DXHXarsFWfpJb00PiO3dz/pzrlEqhzn1xPvi8fsuYku/YAn39RwCO0E/XJJ+fhe3TvTTku/4asfTF8g3T1jMIr/02NGnaiSS7r3r69Mb2h//xcls6VezI/r63t2TBNDB9/19cdtp4r9EzBFMmpxox/MyyDfamhn10q9xB7OeONbI933xfuulQwexpd8ch/f9CDoIeuw8ya+6yMAvE4LtNjygoIsYgITMGCRyp8eDePww7mpmZMmmiO7DD+OuvsFS1hb5kUu0qTY9R4j4GBABJxQKjDAvsf5+9yvx/t/vRJYwwr+4JUxG/CeVGMkxNL0Htxfkbe8RTpUih4RWeYhhBT38FeOQRItwfE//EqSzRIfXykb3LiTJi/2QMMopTP2vk/OqnE9P/CKOkkqMCA218QGNyQZVTLT5WwBigRD/bdO9nlDvzfbRAkw1eJJw6r9tIEbSxJ74f4k2CwltfuzkRfLOLNIfHZPYHyRiiLJXQjPMiGWJ1MeOEftIINYBXg2YpT72ERUpIAjn6PvTSwyhjjwk9BKBGRr62OdtVBuI9X30WuIO8SJbEIjJD9tBzYn44T1CCtS+R8V5mJECYiT92NPqQHNKLB7/kVA36OhjeJPEZ3enPvzZotDsxOJ9fxIy1pDUTr9MADG6Qqmf+1ujZjGL9/+cQt6Ivo1xVAOQb8SShD8axkuBiMU/CqQLtFa5YcNlcp09Ballq5a/v49kNEKdfGKyHVPEgSZI0vsWRxo2GqQARxrq6NO7bRhsEF99aNapqaKOg9EgnBW1+nC4IGigjkj6Wc23AqtkP6TM2GgQqgAIHYsaGkhOkCu/KeGPnr4mrEhf/A+i0QilJjpr5b2YDJH0UUAp8GqBeb37kCJ1FHDt0NPI/ZAcafAo5SYi/ndk+Usjxy0uDZdyRG8tBSd2SCIm5ToU8zLgKmlgSMFVkUBMEjry5HhWJL+WPNSkd4GJ9buJSdLXJ6OFFqYGUy5qEqkiR4HrPkNp8Lhcsh+Sgw4DiZohZr9TSEKDJy0tA8npHFAzGoeaCBk/aD0jYJMx/bnQwkhODhkaiVBwBx3XiUmpocnPiZaKi4P6XBcfPGCM/wdhHRQGO1CEagcujwA3lGuGmCQJI8caFAZE8vJg6ENgYvG+eyOXPzsV9GDq0yGu7ngnk9zox//hyPufXp10m1nx8NWn+/0+syuanODt/i+IlAlg9+B+fxxDrc/F8f+4SgjQf//BJ307uy8UD189evTpwYP7Oh48+PTo0ZfN6BSnOMUpTnGKU5ziFKf4THHub4qu3r8purr/pjgl9qXBl1g67fhL//oyoBPbhq/6svW7ioFKZaBu/tW9le6uV7a7vxBoxNKlUnqgOlAe6B4o91aX0+XyQLrc+3uxWCwVe8u9vd3p3t76ud7e7erWCbeXGbrElqvl5VqtWOuFr1qxXizWtoqVvyq9vaW/KsVz5+pb585tHW3Bz5OTGHkUpGG4pAfwu2l96OjH6cTKxe5SqTZQK5V6e6vpandvrVYpb537q1Yq1o96S78fbffW/zqXPt4hNlBarpWXB+rL2+l6urtW217uXk4vV+BHdx1egb8GSqVqqbp11LtV7K1u1apwTK02YCeWLlWqlSJw2wKVTBfLA6VqBZQxfa5WrBz1bh8dlctAbPl4iaUrpRroDrSqVgMC8K1WrUBXb5eLlWqtWi1Wt0tpIFMrlivFerXSDe9WtpzEutPF2nI1Xa8Xu5crpVKlu1ippIul6tH2ufq50lGteFTDqlg+VmLd5aM6UChVaiCWCnApVaslTK67uA2DHzjWlouV5SpmdVQ5qhS34MjidtpJrLScrldr+Ktc6i1Vl+v1dKVYGyhXtoBguQwqWeqtHbfpAKXbKm+B4m11Ly9vg1LWB7bqYL6Xt8F2L8OP9Falvl3eqpfrIKdKpb4F35zE1DE3kFa/tOEILw2oo1J9GV5Jf5ZezGYvNNvhNB5/P5wS+9LwtyX2P8ktHXiLKDnCAAAAAElFTkSuQmCC',
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Ahmed',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 5, 0),
                                              child: Icon(
                                                Icons.done_all_outlined,
                                                color: Color(0xFF3446A7),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              'Hi ! Where are you ?',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: secondaryText,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Expanded(
                                            child: AutoSizeText(
                                              '00:10 PM',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.15, -1),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'data:image/png;base64,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',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'My status',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Text(
                                      'Tap to add status update',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  maxHeight: 80,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://c8.alamy.com/zooms/9/df0fa703c40147158aaa1cc9dcf5f55f/kfeag0.jpg',
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Dorsaf',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 5, 0),
                                              child: Icon(
                                                Icons.call_made,
                                                color: Color(0xFF25D366),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              'Today, 5:30 PM',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: secondaryText,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 5, 0),
                                            child: Icon(
                                              Icons.call,
                                              color: Color(0xFF25D366),
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 10, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width,
                                  maxHeight: 80,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 120,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'data:image/jpeg;base64,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',
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Achref',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 5, 0),
                                              child: Icon(
                                                Icons.call_received,
                                                color: Color(0xFFE91A1E),
                                                size: 24,
                                              ),
                                            ),
                                            Text(
                                              'Octobre 17, 6:38 PM',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                color: secondaryText,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 5, 0),
                                            child: Icon(
                                              Icons.call,
                                              color: Color(0xFF25D366),
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
