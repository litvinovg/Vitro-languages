<#-- $This file is distributed under the terms of the license in /doc/license.txt$ -->

<#-- Confirmation that an account has been created. -->

<#assign subject = "Ваша учетная запись на сайте ${siteName} была успешно создана." />

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
            <strong>Поздравляем!</strong>
        </p>

        <p>
            Была создана Ваша учетная запись на сайте ${siteName}, связанная с Вашим почтовым адресом ${userAccount.emailAddress}.
        </p>

        <p>
            Если Вы не создавали данную учетную запись, просто проигнорируйте данное письмо. 
            Данный запрос утратит свою силу по истечении 30 дней.
        </p>

        <p>
            Нажмите на ссылку ниже для создания пароля к Вашей новой учетной записи.
        </p>

        <p>
            <a href="${passwordLink}" title="password">${passwordLink}</a>
        </p>

        <p>
            Если ссылка не работает, Вы можете скопировать её в адресную строку браузера и открыть.
        </p>

        <p>
            Спасибо!
        </p>
    </body>
</html>
</#assign>

<#assign text>
${userAccount.firstName} ${userAccount.lastName}

Поздравляем!

Была создана Ваша учетная запись на сайте ${siteName}, 
связанная с Вашим почтовым адресом ${userAccount.emailAddress}.

сли Вы не создавали данную учетную запись, просто проигнорируйте данное письмо.
Данный запрос утратит свою силу по истечении 30 дней.

Вставьте сслыку ниже в адресную строку Вашего бразуера для создания пароля
к Вашей учетной записи.

${passwordLink}

Спасибо!
</#assign>

<@email subject=subject html=html text=text />
