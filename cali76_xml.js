function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    // effect_pedal_catalogue
    let effect_pedal_catalogue = doc.createElement("effect_pedal_catalogue");
    doc.appendChild(effect_pedal_catalogue);

    // effect_pedal
    let effect_pedal = doc.createElement("effect_pedal");
    effect_pedal.setAttribute("analog_or_digital", "Analog");
    effect_pedal_catalogue.appendChild(effect_pedal);

    // image
    let image = doc.createElement("image");
    effect_pedal.appendChild(image);
    image.appendChild(doc.createTextNode("cali76.jpg"));

    // name
    let name = doc.createElement("name");
    effect_pedal.appendChild(name);

    // manufacturer_name
    let manufacturer_name = doc.createElement("manufacturer_name");
    name.appendChild(manufacturer_name);
    manufacturer_name.appendChild(doc.createTextNode("Origin Effects"));

    // model_name
    let model_name = doc.createElement("model_name");
    name.appendChild(model_name);
    model_name.appendChild(doc.createTextNode("Cali76 Compact Deluxe"));

    // type
    let type = doc.createElement("type");
    effect_pedal.appendChild(type);
    type.appendChild(doc.createTextNode("Compressor"));

    // year_of_manufacturing
    let year_of_manufacturing = doc.createElement("year_of_manufacturing");
    effect_pedal.appendChild(year_of_manufacturing);
    year_of_manufacturing.appendChild(doc.createTextNode("2014"));

    // price
    let price = doc.createElement("price");
    price.setAttribute("currency", "лв.");
    effect_pedal.appendChild(price);
    price.appendChild(doc.createTextNode("632.78"));

    // power
    let power = doc.createElement("power");
    effect_pedal.appendChild(power);

    // polarity
    let polarity = doc.createElement("polarity");
    power.appendChild(polarity);
    polarity.appendChild(doc.createTextNode("- в средата"));

    // voltage
    let voltage = doc.createElement("voltage");
    power.appendChild(voltage);
    voltage.appendChild(doc.createTextNode("9/18V DC"));

    // current_draw
    let current_draw = doc.createElement("current_draw");
    power.appendChild(current_draw);
    current_draw.appendChild(doc.createTextNode("77/104mA"));

    // battery
    let battery = doc.createElement("battery");
    battery.setAttribute("has", "Не");
    power.appendChild(battery);

    // dimensions
    let dimensions = doc.createElement("dimensions");
    effect_pedal.appendChild(dimensions);

    // width
    let width = doc.createElement("width");
    width.setAttribute("unit", "см");
    dimensions.appendChild(width);
    width.appendChild(doc.createTextNode("14,3"));

    // height
    let height = doc.createElement("height");
    height.setAttribute("unit", "см");
    dimensions.appendChild(height);
    height.appendChild(doc.createTextNode("6,6"));

    // length
    let length = doc.createElement("length");
    length.setAttribute("unit", "см");
    dimensions.appendChild(length);
    length.appendChild(doc.createTextNode("6,5"));

    // weight
    let weight = doc.createElement("weight");
    weight.setAttribute("unit", "гр");
    effect_pedal.appendChild(weight);
    weight.appendChild(doc.createTextNode("620"));

    // true_bypass
    let true_bypass = doc.createElement("true_bypass");
    true_bypass.setAttribute("has", "Да");
    effect_pedal.appendChild(true_bypass);

    // game descriptions
    let description = doc.createElement("description");
    effect_pedal.appendChild(description);

    // text
    let text = doc.createElement("text");
    description.appendChild(text);
    text.appendChild(doc.createTextNode("Cali76 се счита за един от най-добрите, ако не и най-добрия компресор, който се предлага на пазара днес. Педалът е проектиран, за да ви даде използваем, висококачествен компресор, без твърде много да се забърквате с копчета, които са трудни за разбиране."));
    
    return doc;
}

function serializeDocument(doc) {
    let serializer = new XMLSerializer();
    let serializedDocument = serializer.serializeToString(doc);
    return vkbeautify.xml(serializedDocument);
}

function showGeneratedXML(content) {
    let generatedXmlHtmlElement = document.getElementById('generatedXML');
    generatedXmlHtmlElement.innerText = content;
}

function generateXML(){
    let doc = createXMLDocument();
    showGeneratedXML(serializeDocument(doc));
}