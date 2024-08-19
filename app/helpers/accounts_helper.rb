module AccountsHelper
  def account_avatar_link(account)
    active_link_to account_path(account), class: "inline-flex items-center gap-2" do
      account_avatar(account) +
      account.name
    end
  end

  def account_avatar(account)
    if account.logo.attached?
      image_tag account.logo, class: "rounded-full size-8"
    else
      tag.div account.name[0], class: "size-8 uppercase rounded-full bg-gray-300 text-white flex items-center justify-center"
    end
  end
end
