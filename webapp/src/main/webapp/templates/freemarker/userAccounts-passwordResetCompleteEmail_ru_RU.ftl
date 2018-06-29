<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- Confirmation that a password has been reset. -->

<#assign subject = "Ваш пароль на сайте ${siteName} был изменен." />

<#assign html>
<html>
    <head>
        <title>${subject}</title>
    </head>

    <body>
        <p>
            ${userAccount.firstName} ${userAccount.lastName}
        </p>

        <p>
            <strong>Пароль был успешно изменен.</strong>
        </p>

        <p>
            Ваш пароль для учетной записи ${userAccount.emailAddress} был изменен.
        </p>

        <p>
            Спасибо.
        </p>
    </body>
</html>
</#assign>

<#assign text>
${userAccount.firstName} ${userAccount.lastName}

Пароль был успешно изменен.

Ваш пароль для учетной записи ${userAccount.emailAddress} был изменен.

Спасибо.
</#assign>

<@email subject=subject html=html text=text />
