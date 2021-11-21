class PublicationMailer < ApplicationMailer
    def published_mail(publication)
        @publication = publication
        mail to: @publication.user.email , subject: "Publication-Instagram"
    end
end
