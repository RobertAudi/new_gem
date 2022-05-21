# frozen_string_literal: true

# Taken from https://gist.github.com/AlexWayfer/d57f6fa0d69a8e352197ab83a82cff98
def alias_task(name, old_name)
  t = Rake::Task[old_name]
  desc t.full_comment if t.full_comment
  task name, *t.arg_names do |_, args|
    # values_at is broken on Rake::TaskArguments
    args = t.arg_names.map { |a| args[a] }
    t.invoke(*args)
  end
end
