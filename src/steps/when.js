import { When } from '@cucumber/cucumber';

import clickElement from '../support/steps/clickElement'
import setInputField from '../support/steps/setInputField'
import selectOption from '../support/steps/selectOption'
import clearInputFields from '../support/steps/clearInputFields'
import checkSelected from '../support/steps/checkSelected'

When(
    /^I (click|doubleclick) on the (link|button|element) "([^"]*)?"$/,
    clickElement
);

When(
    /^I (add|set) "([^"]*)?" in the inputfield "([^"]*)?"$/,
    setInputField
);

When(
    /^I select the option for Privacy Policy "([^"]*)?"$/,
    selectOption
);

When(
    /^I clear the inputfield "([^"]*)?"$/,
    clearInputFields
);

When(
    /^I expect that (checkbox|radiobutton) "([^"]*)?" is( not)* checked$/,
    checkSelected
);


