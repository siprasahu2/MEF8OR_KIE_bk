[condition][]xcb object=xcb : XOMContainerBean()
[condition][]Evaluate=eval
[condition][]the {field} is populated=((new Populated()).isPopulated((xcb.xpath({field})).stringValue()))
[condition][]the {field} is not populated=((new Populated()).isNotPopulated(xcb.xpath({field}).stringValue()))
[consequence][]the error code {code} with message {msg} for the field {field}=xcb.logError({code},{msg},{field})
[condition][]it is not true that_the {field} is AlphaNumeric=(!((new DatatypeCheck()).checkAlphaNumeric((xcb.xpath({field}).stringValue()))))
[condition][]the {field} is equal to value {value}=((new Equals()).isEquals((xcb.xpath({field}).stringValue()),{value}))
[condition][]the {field} not_equals {value}=(((new Equals()).isNotEquals(((xcb.xpath({field})).stringValue()),{value})))
[condition][]the {field1} is equal to another field {field2}=(!((new Equals()).isNotEquals((xcb.xpath({field1}).stringValue()),(xcb.xpath({field2}).stringValue()))))
[condition][]the {field1} is not equal to another field {field2}=((new Equals()).isNotEquals((xcb.xpath({field1}).stringValue()),(xcb.xpath({field2}).stringValue())))
[condition][]the interval between date1 {field1} and date2 {field2} is less than or equals to {num}=((new DateCheck()).intervalBetweenTwoDateIsLessThanOrEqualtoDays((xcb.xpath({field1}).stringValue()),(xcb.xpath({field2}).stringValue()),{num}))
[condition][]the interval between {ddd} date and {dtsent} date of {section} section is greater than {days} days=comparingTwoDates(xcb,{ddd},{dtsent},{section},{days})
[condition][]the {field} date falls on holiday for the Trading Partner {value}=((new HolidayCheck()).DateCheckFormat({value},(xcb.xpath({field})).stringValue()))
[condition][]the {field} date falls on {commaSeparatedValues} Weekend days=((new DateCheck()).isWeekend((xcb.xpath({field})).stringValue(),{commaSeparatedValues}))
[condition][]the {field} is equal to values {values}=((new Equals()).isEqualToValues((xcb.xpath({field}).stringValue()),{values}))
[condition][]it is not true that_the maximum length of {field} is {value}=(!((new LengthCheck()).checkMaximumlength(((xcb.xpath({field})).stringValue()),{value})))
[condition][]the maximum length of {field} is {value}=((new LengthCheck()).checkMaximumlength(((xcb.xpath({field})).stringValue()),{value}))
[condition][]the {field} is not equal to values {values}=((new Equals()).isNotEqualToValues((xcb.xpath({field}).stringValue()),{values}))
[condition][]the field_tag {field} is exists=xcb.xpath({field}).booleanValue()
[condition][]any occurence of {field} in {section} are not populated=(AllOccOfFieldNotPop(xcb,{field},{section}))
[condition][]any_occurence_of_the_field {field1} not_equals to the_value {value}=(anyOccurenceNotEqualToValue(xcb,(xcb.xpath({field1}).stringValue()), {value}))
[condition][]The_Rule {ruleID} multiple times {field} in {section} is_not populated=(xcb.moNotExists({ruleID},{section},{field}))
[condition][]Rule {ruleID} multiple times {field} in {section} is_not populated=(moNotExists(xcb,{ruleID},{section},{field}))
[condition][]Rule {ruleID} multiple times {field} in {section} is not equal to {values}=((multiNotEquals(xcb,{ruleID},{section},{field},{values})))
[condition][]Rule {ruleID} multiple times {field} in {section} is populated=(moExists(xcb,{ruleID},{section},{field}))
[consequence][]the rule {ruleId} with error code {errorCode} with message {errorMsg} for the field {field} of section {section}=logMultipleError(xcb,{ruleId},{section},{field},{errorCode},{errorMsg})
[condition][]the {field} contains {values}=((new Contains()).contains((xcb.xpath({field}).stringValue()), {values}))
[condition][]it is not true that_the {field} contains {values}=(!((new Contains()).contains((xcb.xpath({field}).stringValue()), {values})))
[condition][]the {field} is greater than {value}=((new Equals()).isGreaterThan((xcb.xpath({field}).stringValue()), {value}))
[condition][]it is not true that_the {field} is greater than {value}=(!((new Equals()).isGreaterThan((xcb.xpath({field}).stringValue()), {value})))
[condition][]Rule {ruleID} multiple times_the {field} in triple {section} is value not greater than {value}=(isNotGreaterThanTripleSection(xcb,{ruleID},{section},{field},{value}))
[condition][]Rule {ruleID} multiple times_the {section} is greater number of occurence {section2}=(isGreaterThanOccSection(xcb,{ruleID},{section},{section2}))
[condition][]Rule {ruleID} multiple times_the {section} greatest number not equal to occurence {section2}=(isNotEqualOccSection(xcb,{ruleID},{section},{section2}))
[condition][]the {pos} position of {field} is equal to {value}=((new Position()).positionOftagValueEqualToValue({pos}, ((xcb.xpath({field}).stringValue())), {value}))
[consequence][]the {field1} not greater equal to twice {field2} with eroorcode {eCode} and errormsg {eMsg}=dataSizeValueNotGreaterEqualToTwice(xcb,{field1},{field2},{eCode},{eMsg})
[condition][]it is not true that_the {field} is_equal_or_greater than {value}=(!((new Equals()).isEqualOrGreaterThan(((xcb.xpath({field})).stringValue()),{value})))
[condition][]the {field1} not greaterthan or equal to twice the {field2}=dataSizeValueNotGreaterEqualToTwice(xcb,{field1},{field2})
[condition][]Rule {ruleID} multiple times_the {field} in {section} is greater than {value}=(isGreaterThan(xcb,{ruleID},{section},{field},{value}))
[condition][]the {pos} position of {field} is not equal to {value}=(!((new Position()).positionOftagValueEqualToValue({pos}, ((xcb.xpath({field}).stringValue())), {value})))
[condition][]the last character of the {field} has a spacial character {char}=((new Equals()).lastCharacterOfField((xcb.xpath({field}).stringValue()),{char}))
[condition][]the position of spacial character is {pos} in {field}=((new DatatypeCheck()).checkPositionSP({pos}, (xcb.xpath({field}).stringValue())))
[condition][]the {field1} not_lessthan the {field2}=datalessThenValue(xcb,{field1},{field2})
[condition][]Rule {ruleID} multiple times {sectionfield} field_is not equal to the_field {field2}=((isMultiSectionContainField(xcb,{ruleID},{sectionfield},(xcb.xpath({field2}).stringValue()))))
[condition][]the {sectionfield} multiple times populated=((isListOfNumric(xcb,{sectionfield})))
[condition][]the {field1} not_lessthan sum of {field2} and {field3}=isGreaterThanSumValue(xcb,{field1},{field2},{field3})
[condition][]the {section} not_contains {field}=(sectionNotContainField(xcb,{section},{field2}))
[condition][]is lastCharPositionNotSpacialChar for the field {field} is {char}=((new Equals()).lastCharacterOfField((xcb.xpath({field}).stringValue()), {char}))
[condition][]Rule {ruleID} Any occurrence of {field} in {section} and {section2} is equal=(isSectionContainField(xcb,{ruleID},{section},{section2},{field}))
[condition][]Rule {ruleID} multi occurrence of {section} equal with multi occurrence {section2}=(isTwoSectionAreEqual(xcb,{ruleID},{section},{section2}))
[condition][]Rule {ruleID} multiple times_the {field} in {section} is not greater than {value}=(isNotGreaterThan(xcb,{ruleID},{section},{field},{value}))
[condition][]the position of spacial character is {pos} in {field}=((new DatatypeCheck()).checkPositionSP({pos}, (xcb.xpath({field}).stringValue())))
[condition][]the last character of the {field} has a spacial character {char}=((new Equals()).lastCharacterOfField((xcb.xpath({field}).stringValue()),{char}))
[condition][]the {pos} position of {field} is_not_equals to {values}=((new Position()).positionOftagValueNotEqualToValue({pos},(xcb.xpath({field}).stringValue()),{values}))
[condition][]Rule {ruleID} multiple times {field} in {section} is equal to {values}=(multiEquals(xcb,{ruleID},{section},{field},{values}))
[condition][]Rule {ruleID} multiple times_the {field} in {section} is float value greater than {value}=(isGreaterThanFloatValue(xcb,{ruleID},{section},{field},{value}))
[condition][]Rule {ruleID} multiple times_the {field} in {section} is float value not greater than {value}=(isNotGreaterThanFloatValue(xcb,{ruleID},{section},{field},{value}))
[condition][]Rule {ruleID} multiple times {field} in {section} is not unqiue=((isNotUniqueList(xcb,{ruleID},{field},{section})))
[condition][]Rule {ruleID} multiple times {field} in {section} greater {field2} in {section2}=((isMultiSectionGreaterMultiField(xcb,{ruleID},{field},{section},{field2},{section2})))
[condition][]Rule {ruleID} multiple times {field} in {section} equal {field2} in {section2}=((isMultiSectionContainMultiField(xcb,{ruleID},{field},{section},{field2},{section2})))
[condition][]any occurence {ruleID} of {field1} in {section1} contains {field2} in {section2}=(isMultiSectionUniqueList(xcb,{ruleID},{field1},{section1},{field2},{section2}))
[condition][]it is true that_the occurance of {field} is greater_then {count}=(NumOccOfSecGreaterThenCount(xcb,{field},{count}))
[condition][]Rule {ruleID} multiple times_the {field1} in {section} is not_equal to the field {field2}=((multiNotEquals(xcb,{ruleID},{section},{field1},(xcb.xpath({field2}).stringValue()))))
[condition][]it is true that_the occurance of {field} is equal to {count}=(NumOccOfSecNotEqualCount(xcb,{field},{count}))
[condition][]the {field} is_equal_or_greater than {value}=((new Equals()).isEqualOrGreaterThan(((xcb.xpath({field})).stringValue()),{value}))
[condition][]the {field} equals {value}=((new Equals()).isEquals(((xcb.xpath({field})).stringValue()),{value}))
[condition][]Rule {ruleID} multiple times {field} in {section} not_lessthan sum {field2} in {section2} and {field3} in {section3}=((getGreaterSumValue(xcb,{ruleID},{field},{section},{field2},{section2},{field3},{section3})))
[condition][]Rule {ruleID} multiple times_the {field1} in {section} is not greater or equal to twice to the field {field2}=((multiNotGreaterThanOrEqualToTwice(xcb,{ruleID},{section},{field1},(xcb.xpath({field2}).stringValue()))))
[condition][]Rule {ruleID} multiple times_the {field} in {section} contains {values}=(containsfun(xcb,{ruleID},{section},{field},{values}))
[condition][]Rule {ruleID} multiple times_the {field} in {section} not_contains {values}=(nocontainsfun(xcb,{ruleID},{section},{field},{values}))
[condition][]Rule {ruleID} multiple times_the last character of the {field} in {section} has a spacial character {char}=(containsLastCharacterOfField(xcb,{ruleID},{section},{field},{char}))
[condition][]Rule {ruleID} multiple times_the {pos} position of {field} in {section} is equal to values {values}=(PositionValueEqual(xcb,{ruleID},{section},{field},{pos},{values}))
[consequence][]the rule {ruleId} with error code {errorCode} with message {errorMsg} for the section {section}=logMultipleErrorOcc(xcb,{ruleId},{section},{errorCode},{errorMsg})
[consequence][]the rule {ruleId} with error code {errorCode} with message {errorMsg} for the field {field} of triple section {section}=logMultipleErrorTriplrSection(xcb,{ruleId},{section},{field},{errorCode},{errorMsg})
[consequence][]the rule {ruleId} with error code {errorCode} with message {errorMsg} for the field {field} of section {section}=logMultipleError(xcb,{ruleId},{section},{field},{errorCode},{errorMsg})

[condition][]Start Brace=(
[condition][]End Brace=)
[condition][]AND=&&
[condition][]OR=||
