import { Then } from '@cucumber/cucumber';

import checkURL from '../support/steps/checkURL'
import checkTitle from '../support/steps/checkTitle'
import isVisible from '../support/steps/isVisible'
import checkProperty from '../support/steps/checkProperty'
import checkContainsText from '../support/steps/checkContainsText'

Then(
    /^I expect that the url is( not)* "([^"]*)?"$/,
    checkURL
);

Then(
    /^I expect that (button|element) "([^"]*)?"( not)* matches the text "([^"]*)?"$/,
    checkTitle
);

Then(
    /^I expect that element "([^"]*)?" is( not)* displayed$/,
    isVisible
);

Then(
    /^I expect that the( css)* attribute "([^"]*)?" from element "([^"]*)?" is( not)* "([^"]*)?"$/,
    checkProperty
);

Then(
    /^I expect that (button|element|container) "([^"]*)?"( not)* contains the text "([^"]*)?"$/,
    checkContainsText
);