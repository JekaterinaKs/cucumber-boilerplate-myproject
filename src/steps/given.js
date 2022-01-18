import { Given } from '@cucumber/cucumber';

import openWebsite from '../support/steps/openWebsite'


Given(
    /^I open the (url|site) "([^"]*)?"$/,
    openWebsite
);

