+++
title = "How to protect your application in production"
chapter = false
weight = 5
+++

Contrast Security not only shifts security left but also extends it to the right and protect running applications in productions from being exploited due to known or unknown vulnerabilities. Contrast Security uses the same instrumentation, in the fact, the same agent to do this. 
In your Community Edition, this feature is already enabled and you can see that by navigating to Policy sub menu for WebGoat:

{{< figure src="/images/ce_5.png" style="border: 1px solid #000; max-width:auto; max-height:auto;">}}

As you can see, Contrast Security is already protecting the application from exploiting most common vulnerabilities.

Now let's try attacking the application with SQL injection that Contrast discovered on the previous step. Go to the WebGoat site --> String SQL injection and add the following payload: Smith' or '98'='98. You will see that no results have found as Contrast is protecting the application. 

{{< figure src="/images/wg_3.png" style="border: 1px solid #000; max-width:auto; max-height:auto;">}}

However if you try a regular query like "Smith", the request will go through and WebGoat will return some data.

Now let's try to turn Protect off and let's see what happens. If we go back to Contrast, we can turn off SQL Injection rule as shown here:

{{< figure src="/images/ce_6.png" style="border: 1px solid #000; max-width:auto; max-height:auto;">}}

Now you can try to exploit WebGoat again and see what happens