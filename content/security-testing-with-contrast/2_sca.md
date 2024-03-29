+++
title = "Software Composition Analysis"
chapter = false
weight = 3
+++

Contrast Security also identifies third party components used in the application. Unlike the majority of SCA tools, Contrast Security identifies only those library that are actually loaded by the application in the runtime. It even takes one step further and identifies the number of classes used by application that helps to reduce the number of libraries that should be triaged in case they have vulnerabilities.

You can view libraries by clicking on Libraries in the top menu:

{{< figure src="/images/ce_libraries.png" style="border: 1px solid #000; max-width:auto; max-height:auto;">}}

Also this information available via API as well

```bash
curl -X GET https://ce.contrastsecurity.com/Contrast/api/ng/{orgUuid}/libraries -H 'Authorization:{authorization-key}' -H 'API-Key:{API-Key}'
```

The output will look like this:

```bash
{
  "success" : true,
  "messages" : [ "Libraries loaded successfully" ],
  "libraries" : [ {
    "hash" : "0142ce64dcd709a4b5f6e7d71305a31d3893d077",
    "file_name" : "jackson-core-2.6.3.jar",
    "app_language" : "Java",
    "custom" : false,
    "grade" : "A",
    "score" : 100,
    "agePenalty" : 0.0,
    "versionPenalty" : 0.0,
    "version" : "2.6.3",
    "group" : "com.fasterxml.jackson.core",
    "file_version" : "2.6.3",
    "latest_version" : "2.10.0.pr1",
    "release_date" : 1444669679000,
    "latest_release_date" : 1563505582000,
    "classes_used" : 8,
    "class_count" : 93,
    "loc" : 38934,
    "loc_shorthand" : "39K",
    "total_vulnerabilities" : 0,
    "months_outdated" : 9,
    "versions_behind" : 47,
    "high_vulnerabilities" : 0,
    "tags" : null,
    "restricted" : false,
    "invalid_version" : false,
    "bugtracker_tickets" : [ ],
    "licenses" : [ ],
    "ossEnabled" : false
  }],
  "count" : null,
  "averageScoreLetter" : "B",
  "averageScore" : 85,
  "averageMonths" : null,
  "quickFilters" : [ ]
```