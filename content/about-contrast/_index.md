+++
title = "About Contrast Security"
date = 2019-08-11T19:21:12-07:00
weight = 10
chapter = false
pre = "<b>0. </b>"
+++




<p style='text-align: left;'>
Contrast Security is an automated security testing solution that infuses software with vulnerabilitiy assessment capabilities so that security flaws are automatically identified. Contrast Security utilizes dynamic binary instrumentation to identify vulnerabilities in web applications and APIs. Organizations can use Contrast Assess to secure their applications without changing the application software stack, or how they build, test, or deploy code. The result is accurate, continuous vulnerability assessment that integrates seamlessly with existing software development and security processes, scales across the software development lifecycle and the entire application portfolio, and easily outpaces traditional solutions.

Contrast Assess neither scans nor attacks applications, but uses patented state-of-the-art deep security instrumentation technology to combine the most effective elements of static and dynamic testing, software composition and configuration analysis technologies, and deliver them directly into applications. As you can see on the following picture, Contrast instruments not just the custom code but other elements of the application as well proding far better coverage as compared with other application security solutions.

</p>
{{< figure src="/images/contrast1.png" width="500" height="500">}}

### How is Contrast Assess Different than SAST?

Traditional SAST solutions attempt to build a model of an application and pseudo-execute it from known entry points – but SAST is blind to how all the pieces of an application work together and operate at runtime, and can generate extensive false negatives and false positives. Contrast Assess observes real data and control flow activity from within a running application, and identifies a much broader range of vulnerabilities – with greater accuracy – than traditional SAST solutions. Contrast Assess is fully distributed and infuses each application with a “self-assessment” capability that performs analysis continuously, in parallel, across an entire portfolio of applications. SAST solutions cannot operate in a distributed manner because they rely on experts to analyze and triage results, which creates a significant bottleneck.

### How is Contrast Assess Different than DAST?

Traditional DAST tools try to exploit the running application with attacks, and detect vulnerabilities by analyzing HTTP responses – but DAST is blind to what occurs within the application, and provides only limited coverage of an application. Contrast Assess performs a complete static analysis of all the code, as described above, and analyzes HTTP traffic and HTTP responses from inside the application. Because Contrast Assess works from within the application, it also provides more accurate analysis than traditional Penetration (Pen) Testing tools.And, unlike either SAST or DAST products, Contrast Assess uses techniques found in Software Composition Analysis (SCA) tools to build an inventory of all the libraries, frameworks, and microservices used by the application to identify vulnerabilities across all those components.

### DevSecOps

Contrast Security enables DevOps teams to deliver security-as-code by:

- Empowring developers to embedd security as early as possible in the cycle
- Providing continuous vulnerability assessment throughout SDLC (see the following picture)
- Automating security into the pipeline
- Monitoring attacks the way you monitor performance


{{< figure src="/images/contrast2.png" width="800" height="500">}}