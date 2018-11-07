class ConversationsController < ApplicationController
    before_action :set_conversation, only: [:show, :destroy]

    def index
        @conversations = current_user.mailbox.conversations
    end

    def inbox
        @conversations = current_user.mailbox.inbox
        render action: :index
    end

    def sent
        @conversations = current_user.mailbox.sentbox
        render action: :index
    end

    def trash
        @conversations = current_user.mailbox.trash
        render action: :index
    end

    def show
        @conversation.mark_as_read(current_user)
        @message = Mailboxer::Message.new
    end

    def new
        @conversation = Mailboxer::Conversation.new
        @recipient = User.find(params[:recipient])
    end

    def create
        recipient = User.find(params[:recipient])
        receipt = current_user.send_message(recipient, params[:body], params[:subject])
        redirect_to conversation_path(receipt.conversation)
    end

    def destroy
        @conversation.move_to_trash(current_user)
        respond_to do |format|
        format.html { redirect_to conversations_url, notice: 'Conversation was successfully destroyed.' }
        format.json { head :no_content }
        end
    end

    private

    def set_conversation
        @conversation = current_user.mailbox.conversations.find(params[:id])
    end
end